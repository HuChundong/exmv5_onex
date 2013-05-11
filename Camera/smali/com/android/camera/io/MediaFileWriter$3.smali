.class Lcom/android/camera/io/MediaFileWriter$3;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/MediaFileWriter;->saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/io/MediaFileWriter;

.field final synthetic val$handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;

.field final synthetic val$task:Lcom/android/camera/io/SaveMediaTask;


# direct methods
.method constructor <init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/MediaFileWriter$SaveHandle;Lcom/android/camera/io/SaveMediaTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$3;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iput-object p2, p0, Lcom/android/camera/io/MediaFileWriter$3;->val$handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    iput-object p3, p0, Lcom/android/camera/io/MediaFileWriter$3;->val$task:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$3;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iget-object v0, v0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$3;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iget-object v0, v0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter$3;->this$0:Lcom/android/camera/io/MediaFileWriter;

    new-instance v2, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v3, p0, Lcom/android/camera/io/MediaFileWriter$3;->val$handle:Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    iget-object v4, p0, Lcom/android/camera/io/MediaFileWriter$3;->val$task:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_0
    return-void
.end method
