.class public Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "PickerLandingPageActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickerLandingPageActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 41
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "PickerLandingPageActivity"

    const-string v4, "[HTCAlbum][PickerLandingPageMfFragment][onActivityResult]: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    if-eq p2, v5, :cond_1

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 50
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 57
    const-string v3, "PickerLandingPageActivity"

    const-string v4, "[HTCAlbum][PickerLandingPageMfFragment][onActivityResult]: set picker result"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v1

    .line 59
    .local v1, mPickerManager:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v2

    .line 60
    .local v2, pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 61
    if-nez p3, :cond_3

    .line 62
    new-instance p3, Landroid/content/Intent;

    .end local p3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 63
    .restart local p3
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_4

    .line 65
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_4
    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getServiceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 68
    const-string v3, "online_pickermode"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string v3, "servicetype"

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "albumName"

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "albumId"

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "itemId"

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "mediumId"

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v5, p3}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_5
    const-string v3, "online_pickermode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x145b -> :sswitch_0
        0x7f01 -> :sswitch_0
        0x7f04 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstance"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageMfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageActivity;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 30
    return-void
.end method
