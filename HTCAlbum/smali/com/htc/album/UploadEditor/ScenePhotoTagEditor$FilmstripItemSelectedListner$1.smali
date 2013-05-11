.class Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;

.field final synthetic val$nIndex:I


# direct methods
.method constructor <init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;->val$nIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    iget v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;->val$nIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onFilmstripItemSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScenePhotoTagEditor"

    const-string v2, "[HTCAlbum][ScenePhotoTagEditor][FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
