<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
    <title>
        <g:message code="default.list.label" args="[entityName]" />
    </title>
</head>

<body>
    <div id="content" role="main">
        <div class="container">
            <section class="row flex flex-col gap-4 p-4">
                <a href="#list-category" class="skip sr-only focus:not-sr-only focus:outline-none" tabindex="-1">
                    <g:message code="default.link.skip.label" default="Skip to content&hellip;" />
                </a>
                <div class="nav" role="navigation">
                    <ul class="flex items-center gap-4 list-none">
                        <li>
                            <a class="home text-blue-600 hover:underline" href="${createLink(uri: '/')}">
                                <g:message code="default.home.label" />
                            </a>
                        </li>
                        <li>
                            <g:link class="create text-blue-600 hover:underline" action="create">
                                <g:message code="default.new.label" args="[entityName]" />
                            </g:link>
                        </li>
                    </ul>
                </div>
            </section>
            
            <section class="row">
                <div id="list-category" class="col-12 content scaffold-list" role="main">
                    <h1>
                        <g:message code="default.list.label" args="[entityName]" />
                    </h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <!-- Category Table -->
                    <div class="overflow-x-auto shadow-md sm:rounded-lg">
                        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                            <thead
                                class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                <tr>
                                    <th scope="col" class="px-6 py-3">Name</th>
                                    <th scope="col" class="px-6 py-3">Parent</th>
                                    <th scope="col" class="px-6 py-3">Sale Ads Count</th>
                                    <th scope="col" class="px-6 py-3">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${categoryList}" var="category">
                                    <tr
                                        class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                                        <th scope="row"
                                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                            ${category.name}
                                        </th>
                                        <td class="px-6 py-4">
                                            ${category.parent?.name ?: 'N/A'}
                                        </td>
                                        <td class="px-6 py-4">
                                            ${category.saleAds?.size() ?: 0}
                                        </td>
                                        <td class="px-6 py-4">
                                            <g:link controller="category" action="edit" id="${category.id}"
                                                class="font-medium text-blue-600 dark:text-blue-500 hover:underline">
                                                Edit</g:link>
                                        </td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                    </div>
                    <g:if test="${categoryCount > params.int('max')}">
                        <div class="pagination">
                            <g:paginate total="${categoryCount ?: 0}" />
                        </div>
                    </g:if>
                </div>
            </section>
        </div>
    </div>
</body>

</html>