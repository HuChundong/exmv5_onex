.class Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;
.super Ljava/lang/Object;
.source "PickerFolderCreateScene.java"

# interfaces
.implements Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerFolderCreateScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerFolderCreateScene;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerFolderCreateScene;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 5
    .parameter "resultCode"
    .parameter "targetFolderLocation"

    .prologue
    const/4 v4, -0x1

    .line 197
    if-ne p1, v4, :cond_3

    .line 199
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$000(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$100(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 201
    :cond_0
    const-string v1, "PickerFolderCreateScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneControl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$200(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, intentResult:Landroid/content/Intent;
    const-string v1, "file_operation_target_folder_location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "PickerFolderCreateScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendBackResult] Constants.KEY_FILE_OPERATION_TARGET_FOLDER_LOCATION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    invoke-virtual {v1, v0}, Lcom/htc/album/picker/PickerFolderCreateScene;->dump(Landroid/content/Intent;)V

    .line 209
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$300(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 210
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$400(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 214
    .end local v0           #intentResult:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$500(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;->this$0:Lcom/htc/album/picker/PickerFolderCreateScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerFolderCreateScene;->access$600(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
