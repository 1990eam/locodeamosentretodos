import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
      console.log("test 1");
      messagesContainer.insertAdjacentHTML('beforeend', data);
      console.log("test 2");
    }
  });
  }
}

export { initChatroomCable };
