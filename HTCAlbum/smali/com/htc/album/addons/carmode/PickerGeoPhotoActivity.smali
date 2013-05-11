.class public Lcom/htc/album/addons/carmode/PickerGeoPhotoActivity;
.super Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;
.source "PickerGeoPhotoActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNewActionBar(Landroid/app/ActionBar;)Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 2
    .parameter "actionBar"

    .prologue
    .line 29
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V

    return-object v0
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/htc/album/addons/carmode/PickerGeoPhotoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/addons/carmode/PickerGeoPhotoActivity;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 23
    return-void
.end method
