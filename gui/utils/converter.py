# Converter Backend
# Handles file conversion operations using FFmpeg and ImageMagick
# Manages conversion queue and progress tracking

import os
import subprocess
from pathlib import Path
from PyQt6.QtCore import QObject, pyqtSignal, QThread


class ConversionWorker(QThread):
    """Worker thread for file conversion operations"""
    progress_updated = pyqtSignal(int)
    conversion_finished = pyqtSignal(bool, str)
    
    def __init__(self, input_file, output_file, conversion_type):
        super().__init__()
        self.input_file = input_file
        self.output_file = output_file
        self.conversion_type = conversion_type
        self._is_running = True
    
    def run(self):
        """Execute the conversion"""
        try:
            # Mock conversion - simulate progress
            for i in range(0, 101, 10):
                if not self._is_running:
                    break
                self.progress_updated.emit(i)
                self.msleep(200)  # Simulate work
            
            # In real implementation, call FFmpeg/ImageMagick here
            # Example: subprocess.run(['ffmpeg', '-i', self.input_file, self.output_file])
            
            if self._is_running:
                self.conversion_finished.emit(True, f"Converted {self.input_file} to {self.output_file}")
            else:
                self.conversion_finished.emit(False, "Conversion cancelled")
        except Exception as e:
            self.conversion_finished.emit(False, str(e))
    
    def stop(self):
        """Stop the conversion"""
        self._is_running = False


class FileConverter(QObject):
    """Main converter class for managing file conversions"""
    conversion_started = pyqtSignal()
    conversion_progress = pyqtSignal(int)
    conversion_complete = pyqtSignal(bool, str)
    
    def __init__(self):
        super().__init__()
        self.worker = None
        self.supported_formats = {
            'video': ['mp4', 'avi', 'mkv', 'mov', 'wmv', 'flv', 'webm'],
            'audio': ['mp3', 'wav', 'flac', 'aac', 'ogg', 'm4a', 'wma'],
            'image': ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'tiff', 'svg']
        }
    
    def is_format_supported(self, file_path):
        """Check if file format is supported"""
        ext = Path(file_path).suffix.lower().lstrip('.')
        for formats in self.supported_formats.values():
            if ext in formats:
                return True
        return False
    
    def get_conversion_type(self, file_path):
        """Determine conversion type based on file extension"""
        ext = Path(file_path).suffix.lower().lstrip('.')
        for conv_type, formats in self.supported_formats.items():
            if ext in formats:
                return conv_type
        return None
    
    def convert_file(self, input_file, output_file):
        """Start file conversion"""
        if self.worker and self.worker.isRunning():
            return False, "Conversion already in progress"
        
        if not os.path.exists(input_file):
            return False, "Input file not found"
        
        conversion_type = self.get_conversion_type(input_file)
        if not conversion_type:
            return False, "Unsupported file format"
        
        self.worker = ConversionWorker(input_file, output_file, conversion_type)
        self.worker.progress_updated.connect(self.conversion_progress)
        self.worker.conversion_finished.connect(self._on_conversion_finished)
        
        self.conversion_started.emit()
        self.worker.start()
        return True, "Conversion started"
    
    def _on_conversion_finished(self, success, message):
        """Handle conversion completion"""
        self.conversion_complete.emit(success, message)
        self.worker = None
    
    def cancel_conversion(self):
        """Cancel ongoing conversion"""
        if self.worker and self.worker.isRunning():
            self.worker.stop()
            self.worker.wait()
            return True
        return False
    
    def get_supported_formats(self, conversion_type=None):
        """Get list of supported formats"""
        if conversion_type:
            return self.supported_formats.get(conversion_type, [])
        return self.supported_formats
