.class Lcom/android/camera/io/MediaFileWriter$1;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/MediaFileWriter;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/io/MediaFileWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/io/MediaFileWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$1;->this$0:Lcom/android/camera/io/MediaFileWriter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$1;->this$0:Lcom/android/camera/io/MediaFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/io/MediaFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/io/MediaFileWriter$1$1;-><init>(Lcom/android/camera/io/MediaFileWriter$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$1;->this$0:Lcom/android/camera/io/MediaFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/io/MediaFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/io/MediaFileWriter$1$2;-><init>(Lcom/android/camera/io/MediaFileWriter$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
