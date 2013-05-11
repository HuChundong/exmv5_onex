.class public Lcom/android/camera/DefaultVideoResolutionProvider;
.super Ljava/lang/Object;
.source "DefaultVideoResolutionProvider.java"

# interfaces
.implements Lcom/android/camera/IVideoResolutionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DefaultVideoResolutionProvider$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultVideoResolutionProvider"

.field private static final m_DefaultResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m_MmsResolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_ResolutionSettingKeys:[Ljava/lang/String;

.field private static final m_ServiceResolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_ServiceResolutionsHD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_capture_resolution_video_main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_capture_resolution_video_3D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_capture_resolution_video_2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutionsHD:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/DefaultVideoResolutionProvider;->initializeDefaultResolutions()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method

.method private getResolutionFromSettings(Ljava/lang/String;)Lcom/android/camera/Resolution;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v1

    goto :goto_0
.end method

.method private static initializeDefaultResolutions()V
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutionsHD:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-ne v3, v5, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support10800p2ndCam()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->apply720PPreview()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQHD2ndCam()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlineVedioRecording()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v3

    if-eq v3, v5, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v3

    if-eq v3, v5, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isQCT8x30()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1080p()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_c

    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_d

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v3

    if-ne v3, v5, :cond_e

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    return-void

    :cond_f
    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutionsHD:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v3

    if-ne v3, v5, :cond_15

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v3

    if-eq v3, v5, :cond_11

    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_13

    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_14

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v3

    if-ne v3, v5, :cond_e

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_15
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWVGA()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_18

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGA480Recording()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Lcom/android/camera/Resolution;->Video_HVGA480:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    sget-object v3, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v3

    if-ne v3, v5, :cond_1a

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlineVedioRecording()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0
.end method

.method public getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/Resolution;",
            ")",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    const-string v4, "DefaultVideoResolutionProvider"

    const-string v5, "getResolution() - No resolution list specified"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DefaultVideoResolutionProvider"

    const-string v5, "getResolution() - Empty resolution list"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera/DefaultVideoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/DefaultVideoResolutionProvider;->getResolutionFromSettings(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    invoke-virtual {v2, p3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isDefaultMaxMainVideoResolution()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v3, "DefaultVideoResolutionProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResolution() - Unknown camera type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    invoke-virtual {v2, v0}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/android/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$Resolution:[I

    sget-object v4, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    invoke-virtual {v4}, Lcom/android/camera/DisplayDevice$Resolution;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    const-string v3, "DefaultVideoResolutionProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResolution() - Unknown screen resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/android/camera/Resolution;->Video_HVGA480:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isDefaultMaxFrontVideoResolution()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    goto :goto_1

    :cond_8
    const-string v4, "DefaultVideoResolutionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResolution() - Cannot find default resolution in list : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    :cond_9
    const-string v3, "Null"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v1, p0, Lcom/android/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_MmsResolutions:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutionsHD:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ServiceResolutions:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/camera/DefaultVideoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "DefaultVideoResolutionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolutionSettingsKey() - Unknown camera type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "pref_capture_resolution_video_main"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_capture_resolution_video_3D"

    goto :goto_0

    :pswitch_2
    const-string v0, "pref_capture_resolution_video_2nd"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSlowMotionResolution(Lcom/android/camera/CameraType;Ljava/util/List;)Lcom/android/camera/Resolution;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/Resolution;->Video_SlowMotion_768_464:Lcom/android/camera/Resolution;

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/camera/Resolution;->Video_SlowMotion_800_480:Lcom/android/camera/Resolution;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/camera/Resolution;->Video_SlowMotion_768_432:Lcom/android/camera/Resolution;

    goto :goto_0
.end method

.method public resetResolutions()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/DefaultVideoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/android/camera/DefaultVideoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->remove([Ljava/lang/String;)V

    return-void
.end method
