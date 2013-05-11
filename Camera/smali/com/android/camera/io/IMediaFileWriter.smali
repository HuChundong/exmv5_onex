.class public abstract Lcom/android/camera/io/IMediaFileWriter;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IMediaFileWriter.java"


# instance fields
.field public final mediaFileSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSaveCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSavingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IMediaFileWriter.MediaFileSaved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IMediaFileWriter.MediaSaveCanceled"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IMediaFileWriter.MediaSaved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IMediaFileWriter.MediaSaveFailed"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IMediaFileWriter.MediaSaving"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    return-void
.end method


# virtual methods
.method public abstract cancelSavingMedia(Lcom/android/camera/Handle;)Z
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method

.method public abstract getMediaQueueCapacity()J
.end method

.method public abstract getMediaQueueSize()J
.end method

.method public abstract resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V
.end method

.method public abstract saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;
.end method

.method public abstract suspendUpdatingMediaStore()Lcom/android/camera/Handle;
.end method
