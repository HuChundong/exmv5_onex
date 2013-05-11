.class public Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;
.super Ljava/lang/Object;
.source "TrimHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrimHelper"

.field private static sCallFromHtcAlbum:Ljava/lang/Boolean;

.field private static sTrimAppInstall:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sTrimAppInstall:Ljava/lang/Boolean;

    .line 24
    sput-object v0, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sCallFromHtcAlbum:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "act"
    .parameter "sData"

    .prologue
    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.muvee.video.trimer"

    const-string v5, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v0, component:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    const-string v4, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "data"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    const/16 v4, 0x13ba

    :try_start_0
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TrimHelper"

    const-string v5, "[callTrimApplication] Activity not found"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCallFromHtcAlbum(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 89
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sCallFromHtcAlbum:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 91
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sCallFromHtcAlbum:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, bRet:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 96
    .local v1, cpn:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "com.htc.album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const/4 v0, 0x1

    .line 104
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sCallFromHtcAlbum:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isTrimAppInstalled(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    .line 58
    sget-object v4, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sTrimAppInstall:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 60
    sget-object v4, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sTrimAppInstall:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    .local v0, bRet:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.muvee.video.trimer"

    const-string v5, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v1, component:Landroid/content/ComponentName;
    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    .line 80
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->sTrimAppInstall:Ljava/lang/Boolean;

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isTrimFunctionAvailable(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 113
    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->isTrimAppInstalled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->isCallFromHtcAlbum(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
