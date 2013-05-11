.class public abstract Lcom/android/camera/ICaptureResolutionManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ICaptureResolutionManager.java"


# static fields
.field public static final MAX_VIDEO_FILE_SIZE:J = 0xff800000L


# instance fields
.field public final contactPhotoResolution:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DefaultPhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

.field private final m_DefaultVideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

.field public final maxVideoDuration:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public final maxVideoFileSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPreviewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final photoResolution:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public final photoResolutionList:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final slowMotionVideoPreviewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final slowMotionVideoResolution:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public final videoBitRate:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final videoPreviewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final videoResolution:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public final videoResolutionList:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.ContactPhotoResolution"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.MaxVideoDuration"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.MaxVideoFileSize"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const-wide v3, 0xff800000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoPreviewSize"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoResolution"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.PhotoResolutionList"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.SlowMotionVideoPreviewSize"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoPreviewSize:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.SlowMotionVideoResolution"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoResolution:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoBitRate"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->videoBitRate:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoPreviewSize"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoResolution"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICaptureResolutionManager.VideoResolutionList"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/DefaultPhotoResolutionProvider;

    invoke-direct {v0, p3}, Lcom/android/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->m_DefaultPhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    new-instance v0, Lcom/android/camera/DefaultVideoResolutionProvider;

    invoke-direct {v0, p3}, Lcom/android/camera/DefaultVideoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->m_DefaultVideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method

.method public getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->m_DefaultPhotoResolutionProvider:Lcom/android/camera/IPhotoResolutionProvider;

    return-object v0
.end method

.method public getDefaultVideoResolutionProvider()Lcom/android/camera/IVideoResolutionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ICaptureResolutionManager;->m_DefaultVideoResolutionProvider:Lcom/android/camera/IVideoResolutionProvider;

    return-object v0
.end method

.method public abstract restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V
.end method

.method public abstract restoreVideoResolutionProvider(Lcom/android/camera/Handle;Z)V
.end method

.method public abstract setPhotoResolution(Lcom/android/camera/Resolution;)V
.end method

.method public abstract setPhotoResolutionProvider(Lcom/android/camera/IPhotoResolutionProvider;Z)Lcom/android/camera/Handle;
.end method

.method public abstract setVideoResolution(Lcom/android/camera/Resolution;)V
.end method

.method public abstract setVideoResolutionProvider(Lcom/android/camera/IVideoResolutionProvider;Z)Lcom/android/camera/Handle;
.end method

.method public abstract updateResolutions()V
.end method
