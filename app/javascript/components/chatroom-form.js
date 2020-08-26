function submitForm() {
   const frm = document.querySelector('.chatroom-form');
   const ipt = document.querySelector('.chatroom-input input');
   if (frm) {
    frm.addEventListener('ajax:success', event => {
      event.preventDefault();
      ipt.value = "";
      ipt.focus();
     })
   }
};

export { submitForm };
