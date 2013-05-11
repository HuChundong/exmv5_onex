.class public Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;
.super Ljava/lang/Object;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewScrollStateChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;


# direct methods
.method protected constructor <init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 414
    return-void
.end method
