document.addEventListener('DOMContentLoaded', function() {
  const selectAllCheckbox = document.getElementById('select_all');
  const attachmentCheckboxes = document.querySelectorAll('.attachment-checkbox');

  if (selectAllCheckbox) {
    selectAllCheckbox.addEventListener('change', function() {
      attachmentCheckboxes.forEach(checkbox => {
        checkbox.checked = selectAllCheckbox.checked;
      });
    });
  }
});
