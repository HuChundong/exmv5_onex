.class public Lcom/htc/album/SocialNetwork/ActivityMainOnline;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityMainOnline.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainOnline"


# instance fields
.field private mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    return-void
.end method

.method private prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    .locals 2

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, pickerParameter:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v0

    .line 84
    .local v0, pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 86
    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    if-eq p2, v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 68
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "ActivityMainOnline"

    const-string v1, "[HTCAlbum][ActivityMainOnline][onActivityResult] picker mode: set result"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {p0, v2, p3}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->finish()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x145b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstance"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 29
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onStartFragment()V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, bundleSocial:Landroid/os/Bundle;
    const-string v2, "social_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    const-class v2, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 54
    return-void
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 36
    const-string v1, "ActivityMainOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainOnline][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;-><init>()V

    .line 39
    .local v0, plugin:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    return-object v0
.end method
