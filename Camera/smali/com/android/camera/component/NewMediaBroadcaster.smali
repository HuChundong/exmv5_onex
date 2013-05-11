.class public final Lcom/android/camera/component/NewMediaBroadcaster;
.super Lcom/android/camera/component/UIComponent;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "New Media Broadcaster"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/android/camera/MediaEventArgs;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/16 v3, 0x63

    const/4 v2, 0x0

    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v3, p0, Lcom/android/camera/component/NewMediaBroadcaster;->COUNT:I

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    new-array v0, v3, [Lcom/android/camera/MediaEventArgs;

    iput-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/NewMediaBroadcaster;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 3

    const-string v0, ""

    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v2, :cond_0

    const-string v0, "android.hardware.action.NEW_PICTURE"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_0
.end method

.method private checkAndBroadcastIntent()V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x63

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    invoke-virtual {v2}, Lcom/android/camera/io/FileFormat;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".*(BURST)\\d+[.]jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    iget v1, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 8

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v3, Lcom/android/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    new-instance v1, Lcom/android/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    new-instance v4, Lcom/android/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/NewMediaBroadcaster$4;

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/component/NewMediaBroadcaster$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/NewMediaBroadcaster$5;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
