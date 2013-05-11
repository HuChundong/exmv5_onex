.class Lcom/htc/album/addons/carmode/PickerGeoFolderActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PickerGeoFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity$1;->this$0:Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity$1;->this$0:Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;

    invoke-virtual {v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->onBackPressed()V

    .line 122
    return-void
.end method
