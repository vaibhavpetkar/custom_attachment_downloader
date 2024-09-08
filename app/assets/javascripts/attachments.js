document.addEventListener('DOMContentLoaded', function() {
    const selectAllCheckbox = document.getElementById('select_all');
    const attachmentCheckboxes = document.querySelectorAll('input[name="attachments[]"]');
  
    if (selectAllCheckbox) {
      selectAllCheckbox.addEventListener('change', function() {
        attachmentCheckboxes.forEach(checkbox => {
          checkbox.checked = selectAllCheckbox.checked;
        });
      });
    }
  });
  