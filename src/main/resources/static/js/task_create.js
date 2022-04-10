$(document).ready(function () {
    const createButton = $('#create-button');
    createButton.on('click', function () {
        $.ajax({
            url : '/api/task',
            type : 'POST',
            data : {
                name : $('#inputName').val(),
                description : $('#inputDescription').val(),
                priority : $('#inputPriority').val(),
                projectId : $('#inputProjectId').val()
            }
        }).done(function (response) {
            let taskId = response.id
            let projectId = response.projectId;
            window.location.href = `/project/${projectId}/task/${taskId}`;
        })
    })
});