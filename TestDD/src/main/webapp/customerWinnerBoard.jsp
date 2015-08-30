<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script src="jquery-2.1.4.min.js" type="text/javascript"></script>
<script>
$(document).ready(function()
{
	
    var first = $('.item').first(),
        last = $('.item').last(),
        itemWidth = first.width(),
        carousel = $('.carousel');
    carousel.prepend(last.clone()).append(first.clone());
    carousel.width(itemWidth * $('.item').length);
    carousel.css({left: -itemWidth});
    $('.prev').on('click', function(e){
        e.preventDefault();
        carousel.animate({left: '+=' + itemWidth}, 300, function(){
            if(Math.abs(carousel.position().left) < 2) {
                carousel.css({left: -itemWidth * (carousel.children().length - 2)});
            }
        });
        return false;       
    });
    $('.next').on('click', function(e){
        e.preventDefault();
        carousel.animate({left: '-=' + itemWidth}, 300, function(){
            if(Math.abs(carousel.position().left + itemWidth * (carousel.children().length - 1)) < 2) {
                carousel.css({left: -itemWidth});
            }
        });
        return false;       
    });
	
	var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

  $('a[data-modal-id]').click(function(e) {
    e.preventDefault();
    $("body").append(appendthis);
    $(".modal-overlay").fadeTo(500, 0.7);
    //$(".js-modalbox").fadeIn(500);
    var modalBox = $(this).attr('data-modal-id');
    $('#'+modalBox).fadeIn($(this).data());
  });  
  
  
$(".js-modal-close, .modal-overlay").click(function() {
  $(".modal-box, .modal-overlay").fadeOut(500, function() {
    $(".modal-overlay").remove();
  });
});
 
$(window).resize(function() {
  $(".modal-box").css({
    top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
    left: ($(window).width() - $(".modal-box").outerWidth()) / 2
  });
});
 
$(window).resize();
	
	
 });
 

</script>
<!-- Optional theme -->
<script>
var jiraRestResponse={"expand":"schema,names","startAt":0,"maxResults":50,"total":12,"issues":[{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10011","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10011","key":"JIG3-4","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10002","id":"10002","key":"JIG3","name":"JIgarthanda3","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:33:46.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:33:46.981+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-4/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:33:25.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:33:46.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":"asdasd","customfield_10012":"0|i0002f:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"improve the page load performance","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_21144_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-4/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10010","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10010","key":"JIG3-3","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10002","id":"10002","key":"JIG3","name":"JIgarthanda3","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:33:10.472+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-3/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:33:10.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:33:10.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10000","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"To Do","id":"10000","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/2","id":2,"key":"new","colorName":"blue-gray","name":"To Do"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i00027:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"summary tupe is not working","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-3/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10009","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10009","key":"JIG3-2","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10002","id":"10002","key":"JIG3","name":"JIgarthanda3","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:32:56.837+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-2/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:32:56.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:32:56.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10000","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"To Do","id":"10000","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/2","id":2,"key":"new","colorName":"blue-gray","name":"To Do"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0001z:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"Remote connection is not working","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-2/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10008","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10008","key":"JIG3-1","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10002","id":"10002","key":"JIG3","name":"JIgarthanda3","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:32:35.083+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-1/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:32:34.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:32:34.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10000","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"To Do","id":"10000","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/2","id":2,"key":"new","colorName":"blue-gray","name":"To Do"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0001r:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"FiOS transmission is not working","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG3-1/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10007","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10007","key":"JIG2-4","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10001","id":"10001","key":"JIG2","name":"JIgarthanda2","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:30:36.449+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-4/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:30:25.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:30:25.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10000","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"To Do","id":"10000","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/2","id":2,"key":"new","colorName":"blue-gray","name":"To Do"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0001j:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"submission page has to be improved","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-4/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10006","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10006","key":"JIG2-3","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10001","id":"10001","key":"JIG2","name":"JIgarthanda2","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:30:56.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:30:56.683+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-3/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:30:04.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:30:56.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0001b:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"supress junk mails","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_51476_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-3/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10005","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10005","key":"JIG2-2","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10001","id":"10001","key":"JIG2","name":"JIgarthanda2","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:31:13.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:31:14.349+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-2/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:29:51.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:31:13.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i00013:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"enable advertisement","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_81783_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-2/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10004","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10004","key":"JIG2-1","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10001","id":"10001","key":"JIG2","name":"JIgarthanda2","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:29:36.381+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-1/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:29:36.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":null,"updated":"2015-08-30T07:29:36.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10000","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"To Do","id":"10000","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/2","id":2,"key":"new","colorName":"blue-gray","name":"To Do"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0000v:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"enable promotion 1","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG2-1/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10003","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10003","key":"JIG-4","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10000","id":"10000","key":"JIG","name":"JigarthandaHackathon","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:27:24.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:28:04.672+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-4/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:26:07.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"updated":"2015-08-30T07:27:24.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|i0000n:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"account creation is not working","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_77107_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-4/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10002","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10002","key":"JIG-3","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10004","id":"10004","description":"A problem which impairs or prevents the functions of the product.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10502&avatarType=issuetype","name":"Bug","subtask":false,"avatarId":10502},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10000","id":"10000","key":"JIG","name":"JigarthandaHackathon","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:27:06.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:27:13.359+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-3/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:25:08.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"updated":"2015-08-30T07:27:06.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":"not able to pay billing amount","customfield_10012":"0|i0000f:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"not able to pay billing amount","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_118203_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"environment":"PROD","duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-3/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10001","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10001","key":"JIG-2","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10001","id":"10001","description":"Created by JIRA Agile - do not edit or delete. Issue type for a user story.","iconUrl":"https://jigarthanda.atlassian.net/images/icons/issuetypes/story.png","name":"Story","subtask":false},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10000","id":"10000","key":"JIG","name":"JigarthandaHackathon","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":{"self":"https://jigarthanda.atlassian.net/rest/api/2/resolution/10000","id":"10000","description":"Work has been completed on this issue.","name":"Done"},"resolutiondate":"2015-08-30T07:23:50.000+0530","workratio":-1,"lastViewed":"2015-08-30T07:27:16.930+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-2/watchers","watchCount":1,"isWatching":true},"created":"2015-08-30T07:17:11.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"updated":"2015-08-30T07:23:50.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/10001","description":"","iconUrl":"https://jigarthanda.atlassian.net/","name":"Done","id":"10001","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/3","id":3,"key":"done","colorName":"green","name":"Done"}},"components":[],"timeoriginalestimate":null,"description":"account creation is not working","customfield_10012":"0|i00007:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10005":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"account creation is not working","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":"10000_*:*_1_*:*_399089_*|*_10001_*:*_1_*:*_0","customfield_10002":null,"customfield_10003":null,"customfield_10004":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-2/votes","votes":0,"hasVoted":false}}},{"expand":"operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields","id":"10000","self":"https://jigarthanda.atlassian.net/rest/api/2/issue/10000","key":"JIG-1","fields":{"issuetype":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issuetype/10002","id":"10002","description":"A task that needs to be done.","iconUrl":"https://jigarthanda.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10500&avatarType=issuetype","name":"Task","subtask":false,"avatarId":10500},"timespent":null,"project":{"self":"https://jigarthanda.atlassian.net/rest/api/2/project/10000","id":"10000","key":"JIG","name":"JigarthandaHackathon","avatarUrls":{"48x48":"https://jigarthanda.atlassian.net/secure/projectavatar?avatarId=10011","24x24":"https://jigarthanda.atlassian.net/secure/projectavatar?size=small&avatarId=10011","16x16":"https://jigarthanda.atlassian.net/secure/projectavatar?size=xsmall&avatarId=10011","32x32":"https://jigarthanda.atlassian.net/secure/projectavatar?size=medium&avatarId=10011"}},"fixVersions":[],"aggregatetimespent":null,"resolution":null,"resolutiondate":null,"workratio":-1,"lastViewed":"2015-08-30T07:27:19.780+0530","watches":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-1/watchers","watchCount":1,"isWatching":true},"created":"2015-08-27T22:02:09.000+0530","customfield_10020":null,"customfield_10021":null,"customfield_10022":null,"priority":{"self":"https://jigarthanda.atlassian.net/rest/api/2/priority/3","iconUrl":"https://jigarthanda.atlassian.net/images/icons/priorities/medium.png","name":"Medium","id":"3"},"customfield_10023":"Not Started","customfield_10024":null,"labels":[],"customfield_10016":null,"customfield_10017":null,"customfield_10018":null,"customfield_10019":null,"timeestimate":null,"aggregatetimeoriginalestimate":null,"versions":[],"issuelinks":[],"assignee":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"updated":"2015-08-30T07:23:34.000+0530","status":{"self":"https://jigarthanda.atlassian.net/rest/api/2/status/3","description":"This issue is being actively worked on at the moment by the assignee.","iconUrl":"https://jigarthanda.atlassian.net/images/icons/statuses/inprogress.png","name":"In Progress","id":"3","statusCategory":{"self":"https://jigarthanda.atlassian.net/rest/api/2/statuscategory/4","id":4,"key":"indeterminate","colorName":"yellow","name":"In Progress"}},"components":[],"timeoriginalestimate":null,"description":null,"customfield_10012":"0|hzzzzr:","customfield_10013":null,"customfield_10014":null,"customfield_10015":null,"customfield_10006":null,"customfield_10007":null,"customfield_10009":null,"aggregatetimeestimate":null,"summary":"login form","creator":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"subtasks":[],"reporter":{"self":"https://jigarthanda.atlassian.net/rest/api/2/user?username=admin","name":"admin","key":"admin","emailAddress":"rsnvinesh@gmail.com","avatarUrls":{"48x48":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=48","24x24":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=24","16x16":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=16","32x32":"https://secure.gravatar.com/avatar/25273d0bdfb6d924fa0ee969cf9cb029?d=mm&s=32"},"displayName":"vinesh kumar [Administrator]","active":true,"timeZone":"America/Los_Angeles"},"customfield_10000":null,"aggregateprogress":{"progress":0,"total":0},"customfield_10001":null,"customfield_10002":null,"customfield_10003":null,"environment":null,"duedate":null,"progress":{"progress":0,"total":0},"votes":{"self":"https://jigarthanda.atlassian.net/rest/api/2/issue/JIG-1/votes","votes":0,"hasVoted":false}}}]};
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CUSTOMER WINNING WEBSITE</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400);

html, body {
	overflow-x: hidden!important;
	/* font-family: 'Source Sans Pro', sans-serif; */
    font-family: 'arial', sans-serif;
	-webkit-font-smoothing: antialiased;
	min-height: 100%;
	background: #eee;
	font-size:12px;
	margin:0px auto;
}
.row {
	padding-top:20px;
	padding-bottom:20px;
	float:left;
	width:100%;
	background:#FFFFFF
}
.panel-heading {
	padding: 10px 15px;
	border-top-right-radius: 3px;
	border-top-left-radius: 3px;
	border-bottom: 1px solid #eee;
	background-color: #fff;
	color: #ED4821;
font-weight: bold;
font-size: 24px;
font-family:"Open Sans",arial;
}
section {
	margin-left:10px;
	margin-right:10px;
}
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
	float: left;
}
.borderBG {
	border: 1px solid #ecedee;
	background: #eee;
}
.col-md-2 {
	width: 16.666666666666664%;
}
.col-md-3 {
	width: 25%;
}
.sm-st {
	background: #f2f2f2;
	padding: 20px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	margin-left:10px;
	border:1px solid #ccc
}
.wrapper {
	width:1000px;
	position:relative;
	margin:auto;
	background-color:#fff
}
.sm-st-info span {
	display: block;
	font-size: 24px;
	font-weight: 600;
}
.sm-st-info {
	font-size: 12px;
	padding-top: 2px;
	font-size:14px;
}
.sm-st-icon {
	width: 30px;
	height: 30px;
	display: inline-block;
	line-height: 60px;
	text-align: center;
	font-size: 30px;
	background: #eee;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	float: left;
	margin-right: 10px;
	color: #fff;
}
.st-red {
	background-color: #F05050;
}
.st-blue {
	background-color: #0099FF;
}
.st-green {
	background-color: #009933;
}
.st-yellow {
	background-color: #FFCC00;
}
.st-violet {
	background-color: #9966CC;
}
.st-brown {
	background-color: #993300;
}
thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
}
.panel-body {
	padding: 15px;
}
.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
	padding: 8px;
	line-height: 2em;
	vertical-align: top;
	border-top: 1px solid #ddd;
	text-align:left
}

.table>thead>tr>th{
background-color:#333333;
color:#fff !important;
border-left:1px solid #666
}

.table tr:hover{
background-color:#eee;
color:#333 !important;

border-left:1px solid #666;

}

#footerWrapper {
    height: 30px;
    width: 1000px;
    margin: 0px auto;
}

.clearBoth {
	clear:both
}
.label-red {
	color:#FF0000
}
.label-green {
	color:#009933
}
.col-md-8 {
	width: 66.66666666666666%;
}
.col-md-4 {
	width: 33.33333333333333%;
}
a {
	text-decoration:none;
	color:#fff
}
.logo {
	color:#fff;
	font-size:24px;
	font-weight: bold;
	padding-top: 30px;
padding-left: 30px;
font-family: 'Open Sans', sans-serif;
}
.HeaderInnerBG {
	background: #ed4821;
	border-bottom:1px solid #fff
}
#HeaderWrapper {
	height: 99px;
	width: 1000px;
	margin: 0px auto;
}

.footerborder{ border-bottom:10px solid #333; padding-bottom:40px}
.topmenu {
	height: 36px;
	float: right;
	position: relative;
	width: 240px;
	background: transparent url("../images/topMenuBG.png") no-repeat scroll center top;
}
.topmenu ul li {
	float: left;
	position: relative;
	list-style: outside none none;
}
.topmenu ul {
	padding: 10px 0px 0px 10px;
	margin: 0px;
}
.topmenu ul li a {
	float: left;
	position: relative;
	color: #fff;
	list-style: outside none none;

	text-decoration: none;
	border-right: 1px solid #BEBEBE;
	font-family: arial;
	padding-left: 15px;
	padding-right: 15px;
	font-size: 12px;
}
#NavMenu {
	width: auto;
	float: right;
	position: relative;
	margin-right: 16px;
	background: transparent none repeat scroll 0% 0%;
	margin-top: 32px;
}
#NavMenu li {
	display: inline-block;
	position: relative;
	float: left;
	margin-right: 3px;
	margin-left: 3px;
	padding-top: 5px;
	padding-bottom: 5px;
}
#NavMenu ul {
	margin: 0px;
	padding: 0px;
	list-style: outside none none;
}
#NavMenu li:hover a {
	background: #3E7E9E none repeat scroll 0% 0%;
	padding: 5px;
	color: #FFF;
}
#NavMenu a:hover {
	color: #00ADEF;
}
#NavMenu a {
	float: left;
	text-decoration: none;
	font-size: 16px;
	padding: 5px 10px;
	color: #E3E4E9;
	line-height: 1em;
	text-align: center;
	font-family: "AlegreyaSans", arial;
}
a:link, a:active, a:visited {
	color: #3683AB;
	text-decoration: none;
}
.Good {
    background-color: #00FF00;
    
} 
.Need to Improve {
    background-color: #FF0000;
    
} 
.Average {
    background-color: #FFFF00;
    
} 

.container {
    font-family: 'Open Sans', sans-serif;
    font-size: 14px;
    font-weight: 300;
    width: 1000px;
}

.container h1 {
    color: #ccc;
    font-size: 32px;
    font-weight: 800;
    margin-bottom: 20px;
    text-shadow: 1px 1px 0 #999;
}

.container p {
    margin: 0px 0;
}

.carousel-wrapper {
    position: relative;
    width: 1000px;
    height: 240px;
    overflow: hidden;
    margin: 0px 0;
	background:#333
}

.carousel {
    position: absolute;
	margin-top:0px;
	padding-top:0px;
}

.carousel li {
    display: block;
    float: left;
    width: 1000px;
    height: 240px;
    position: relative;
}

.carousel img {
    position: absolute;
    z-index: 0;
}

.carousel p.text {
    position: absolute;
    z-index: 1;
    font-size: 16px;
    width: 340px;
    right: 80px;
    top: 0px;
    color: #ff6347;
    background-color: #111111;
    background-color: #333;
    padding: 20px;
height: 200px;
}

.carousel-nav a {
    display: block;
    height: 40px;
    width: 30px;
    font-size: 24px;
    line-height: 1.6;
    font-weight: 800;
    color: #222;
    background-color: rgb(255,99,71);
    background-color: rgba(255,99,71,0.7);
    text-decoration: none;
    padding: 0 4px;
    position: absolute;
    top: 50%;
    margin-top: -20px;
    text-align: center;
    z-index: 10;
}

.carousel-nav a.prev {
    left: 0;
    -webkit-border-top-right-radius: 4px;
    -webkit-border-bottom-right-radius: 4px;
    -moz-border-radius-topright: 4px;
    -moz-border-radius-bottomright: 4px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}

.carousel-nav a.next {
    right: 0;
    -webkit-border-top-left-radius: 4px;
    -webkit-border-bottom-left-radius: 4px;
    -moz-border-radius-topleft: 4px;
    -moz-border-radius-bottomleft: 4px;
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}
.modal-box {
  display: none;
  position: absolute;
  z-index: 1000;
  width: 50%;
  background: white;
  border-bottom: 1px solid #aaa;
  border-radius: 4px;
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  border: 1px solid rgba(0, 0, 0, 0.1);
  background-clip: padding-box;
}

.modal-box header,
.modal-box .modal-header {
  padding: 1.25em 1.5em;
  border-bottom: 1px solid #ddd;
}

.modal-box header h3,
.modal-box header h4,
.modal-box .modal-header h3,
.modal-box .modal-header h4 { margin: 0; }

.modal-box .modal-body { padding: 2em 1.5em; }

.modal-box footer,
.modal-box .modal-footer {
  padding: 1em;
  border-top: 1px solid #ddd;
  background: rgba(0, 0, 0, 0.02);
  text-align: right;
}

.modal-overlay {
  opacity: 0;
  filter: alpha(opacity=40);
  position: absolute;
  top: 0;
  left: 0;
  z-index: 900;
  width: 100%;
  height: 100%;
  background: #333 !important;
  opacity:4.0;
}

a.close {
  line-height: 1;
  font-size: 1.5em;
  position: absolute;
  top: 5%;
  right: 2%;
  text-decoration: none;
  color: #333 !important;
  background:#fff !important
}

a.close:hover {
  color: #222;
  -webkit-transition: color 1s ease;
  -moz-transition: color 1s ease;
  transition: color 1s ease;
}

.js-modal-close{ background:#666666; color:#FFFFFF !important; padding:4px 10px 4px 10px; font-size:12px; border-radius:4px}

</style>
</head>
<body>


<div id="popup" class="modal-box">  
  <header>
    <a href="#" class="js-modal-close close">×</a>
    <h3>Reports</h3>
  </header>
  <div class="modal-body">
    <p>Report comes here</p>
  </div>
  <footer>
    <a href="#" class="js-modal-close">Close Button</a>
  </footer>
</div>

<div class="wrapper">
  <div class="HeaderInnerBG">
    <div id="HeaderWrapper">
      <div class="topmenu">
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#" style="border-right:none; padding-right:0px;font-weight:bold" > Welcome Jane Doe</a></li>
          <li><a href="#" class="noRightBorder" style=" padding-left:5px; border-right:none; ">- Logout</a></li>
        </ul>
      </div>
      <div class="logo">CWB<br />
      <span style="font-size:14px; color:#fff; text-transform:uppercase ">CUSTOMER WINNING BOARD</span>
      </div>
    </div>
  </div>
  <div class="container">
<div class="carousel-wrapper">    
<ul class="carousel">
    <li class="item">
     <a data-flickr-embed="true" data-header="false" data-footer="false" data-context="true"  href="https://www.flickr.com/photos/97475470@N03/9041587722/in/photostream/" title="Business Analytics"><img src="https://farm3.staticflickr.com/2867/9041587722_b0709987ec_b.jpg" width="800" height="482" alt="Business Analytics"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>
        <p class="text">
            <span style="font-size:24px">Congratulations!</span> <br /><br />JigarthandaHackathon team is on the top Rank . Congratulations to JigarthandaHackathon Team."
        </p>
    </li>
    <li class="item">
        <a data-flickr-embed="true" data-header="false" data-footer="false" data-context="true"  href="https://www.flickr.com/photos/97475470@N03/9041587722/in/photostream/" title="Business Analytics"><img src="https://farm3.staticflickr.com/2867/9041587722_b0709987ec_b.jpg" width="800" height="482" alt="Business Analytics"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>
        <p class="text">
            <span style="font-size:24px">Congratulations!</span>  <br /><br />JigarthandaHackathon team is on the top Rank . Congratulations to JigarthandaHackathon Team"
        </p>
    </li>
    <li class="item">
       <a data-flickr-embed="true" data-header="false" data-footer="false" data-context="true"  href="https://www.flickr.com/photos/97475470@N03/9041587722/in/photostream/" title="Business Analytics"><img src="https://farm3.staticflickr.com/2867/9041587722_b0709987ec_b.jpg" width="800" height="482" alt="Business Analytics"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>
        <p class="text">
            <span style="font-size:24px">Congratulations!</span>  <br /><br />JigarthandaHackathon team is on the top Rank . Congratulations to JigarthandaHackathon Team"
        </p>
    </li>
</ul>
<div class="carousel-nav">
    <a href="" class="prev">&lt;</a>
    <a href="" class="next">&gt;</a>   
</div>
</div>
</div>

   <!--- Main Project section starts here ---> 
  <div class="row clearBoth footerborder">
    <div class="col-md-8">
      <section class="panel">
        <header class="panel-heading"> Contestents </header>
        <div class="panel-body table-responsive" id="reportsTable">
          
        </div>
      </section>
    </div>
    <!--end col-6 -->
    <div class="col-md-4">
      <section class="panel">
        <header class="panel-heading"> Report </header>
        <div class="panel-body table-responsive"> CHART COMES HERE </div>
      </section>
    </div>
  </div>
  
 <!--- Main Project section ends here ---> 
  
<!--- Manager section starts here --->
  
<!--- Manager section ends here --->

</div>
<script>
 var issueId;
  var projectName;
  var projectManager;
  var status;
  var deliveryHead="jigarth";
 var issueType;
 var issueDescription;
 var issueStatus;
 var totalNumberOfTickets;
 var totalNumberOfProjects = new Array();
 var totalProjectMap = {};
 var count=0;
//alert(jra);
$.each(jiraRestResponse, function(key,value) {
	    console.log("key:::"+key);
		console.log("value:::"+value);
		if(key=='total'){
		console.log("totalNumberOfTickets:::"+value);
		totalNumberOfTickets=value;
		$("#overalTicketsCount").html(totalNumberOfTickets);
		}
		if(key=='issues'){
			
			var issueList=value;
			$.each(issueList, function(key1,value1) {		
			console.log("isuues list::"+key1+":::"+value1);
 $.each(value1, function(key,value) {
	 if(key=="key"){
		console.log("issueId:::"+value);
		issueId=value;
		}
		console.log("issueId1:::"+issueId);
	  if(key=="fields"){
	  //console.log("issueName:::"+value['issuetype'].name);
	  //console.log("issueDescription:::"+value['components']);
	  //console.log("projectKey:::"+value['project'].key);
	  
	  //console.log("createdDate:::"+value['description']);
	  //console.log("priority:::"+value['priority'].name);
	  //console.log("assignee:::"+value['issuelinks'].assignee);
	  //console.log("updated:::"+value['issuelinks'].updated);
	  //console.log("status:::"+value['status'].name);
	  if($.inArray(value['project'].key, totalNumberOfProjects)==-1){
	  	  totalNumberOfProjects.push(value['project'].key);
	  
	  }
	  
	  //projectName=value['project'].name;
	  //issueType=value['issuetype'].name;
	  //issueDescription=value['description'];
	  //issueStatus=value['status'].name;
	  
	  totalProjectMap[value['project'].key+'_'+count] = value;
	 
		count++;
		}
	 
		
 });
  });
		}
		
});
var $layer='<table class="table table-hover" width="100%" cellpadding="0" cellspacing="0"><thead><tr><th>#</th><th>Projects</th><th>Managers</th>        <th>DeliveryHead</th><th>Status </th><th>Progress</th><th>Report And Rank</th></tr></thead><tbody>';
for(j=0;j<totalNumberOfProjects.length;j++){
 var moduleIssueCount=0;
var moduleTaskDoneCount=0;
console.log("keyyyyyyy::"+j+"::::::::value::"+totalNumberOfProjects[j]);
var projectTempName=totalNumberOfProjects[j];
$.each(totalProjectMap, function(key1,value1) {
var key1temp=key1.split('_');
if(key1temp[0]==projectTempName){
$.each(value1, function(key2,value2) {
console.log("key2::"+key2 +"::::::::value2::"+value2);
if(key2=='project'){
console.log('projectName::'+value2.name);
projectName=value2.name;
}
if(key2=='assignee'){
console.log('assigneeName::'+value2);
if(value2!=null){
projectManager=value2.name;
}
else{
projectManager='Admin';
}
}
if(key2=='status'){
console.log('status::'+value2.name);
console.log('before moduleIssueCount::'+moduleIssueCount);
issueStatus=value2.name;
//alert(moduleIssueCount);
moduleIssueCount=moduleIssueCount+1;
if(issueStatus=='Done'){
moduleTaskDoneCount=moduleTaskDoneCount+1;
}
}
});
}
});
console.log('moduleIssueCount::'+moduleIssueCount+':::moduleTaskDoneCount::'+moduleTaskDoneCount);
projectCompletedPercentage=(moduleTaskDoneCount/moduleIssueCount)*100;
if(projectCompletedPercentage>=75){
issueStatus='Good';
}
if(projectCompletedPercentage<25){
issueStatus='Need to Improve';
}
if(projectCompletedPercentage>=25 && projectCompletedPercentage<75){
issueStatus='Average';
}
$layer+="<tr><td>"+1+"</td><td>"+projectName+"</td><td>"+projectManager+"</td><td>"+deliveryHead+"</td><td><span class="+issueStatus+">"+issueStatus+"</span></td><td>";
$layer+=projectCompletedPercentage+"</td><td><a class='js-open-modal' href='#' data-modal-id='popup'> Click me </a></td></tr>";
}
$layer+="</tbody></table>";
$("#reportsTable").append($layer);
//console.log("totalNumberOfProjects:::"+totalNumberOfProjects);
console.log("totalProjectMap:::"+totalProjectMap.length);



</script>
</body>
</html>
