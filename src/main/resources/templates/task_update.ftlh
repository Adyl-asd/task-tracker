<#import "partials/main.ftlh" as main/>

<@main.renderWith title="Edit Task" scripts=["js/task_update.js"]>
    <div class="container mt-3">
        <form>
            <input type="hidden" id="inputProjectId" value="${projectId}">
            <input type="hidden" id="inputTaskId" value="${task.id}">
            <div class="mb-3">
                <label for="inputName" class="form-label">Name</label>
                <input type="text" class="form-control" id="inputName" value="${task.name}">
            </div>
            <div class="mb-3">
                <label for="inputDescription" class="form-label">Description</label>
                <input type="text" class="form-control" id="inputDescription" value="${task.description}">
            </div>
            <div class="mb-3">
                <label for="inputStatus" class="form-label">Status</label>
                <select class="form-select" id="inputStatus">
                    <option selected value="${task.status}">${task.status.getName()}</option>
                    <#list statuses as s>
                        <option value="${s}">${s.getName()}</option>
                    </#list>
                </select>
            </div>
            <div class="mb-3">
                <label for="inputPriority" class="form-label">Priority</label>
                <select class="form-select" id="inputPriority">
                    <option selected value="${task.priority}">${task.priority}</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
            </div>
        </form>
        <button id="update-button" class="btn btn-primary">Update</button>
        <a href="/project/${projectId}/task/${task.id}" type="button" class="btn btn-outline-primary">Back to Task</a>
    </div>
</@main.renderWith>