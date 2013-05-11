.class public Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;
.super Ljava/lang/Object;
.source "CommonServices.java"


# static fields
.field public static final FACEBOOK:I = 0x0

.field public static final FACEBOOK_HTC:I = 0x2

.field public static final FEATURE_GALLERY:Ljava/lang/String; = "SupportGallery"

.field public static final FLICKR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RENREN:I = 0x3

.field public static final SERVICES_SUPPORTED:[Ljava/lang/String; = null

.field public static final SERVICES_URL:[Ljava/lang/String; = null

.field public static final SHARE_INTENT_SERVICES_URL:[Ljava/lang/String; = null

.field public static final SINA:I = 0x4

.field public static final UNKONWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "facebook"

    aput-object v1, v0, v2

    const-string v1, "flickr"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "RenRen"

    aput-object v1, v0, v5

    const-string v1, "Sina Weibo"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v2

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    aput-object v1, v0, v5

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.auth.login"

    aput-object v1, v0, v2

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v3

    const-string v1, "com.htc.socialnetwork.facebook"

    aput-object v1, v0, v4

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    aput-object v1, v0, v5

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter "context"
    .parameter "szService"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 50
    .local v3, intentQuery:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 52
    .local v0, actList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v1

    .line 107
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 56
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 57
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intentQuery:Landroid/content/Intent;
    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v3       #intentQuery:Landroid/content/Intent;
    const-string v8, "image/*"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v8, 0x1

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v2, v1

    .line 62
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 64
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v7, 0x0

    .line 66
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 67
    .local v4, listSize:I
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    if-le v4, v5, :cond_6

    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .restart local v7       #resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_4

    .line 67
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    :cond_4
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 74
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    aget-object v8, v8, v11

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 78
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    :goto_3
    move-object v2, v1

    .line 107
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 82
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 84
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SHARE_INTENT_SERVICES_URL:[Ljava/lang/String;

    aget-object v8, v8, v12

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 91
    :cond_8
    invoke-static {p1}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 93
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 95
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CommonServices][scan4ServiceShareIntent]: Set Componet Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 104
    :cond_9
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CommonServices][scan4ServiceShareIntent]: unknow service name. szService: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
