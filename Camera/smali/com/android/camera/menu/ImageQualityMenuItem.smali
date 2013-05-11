.class public Lcom/android/camera/menu/ImageQualityMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ImageQualityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageQualityMenuItem"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_Items:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Lcom/android/camera/menu/ImageQualityMenuItem;->initForceImageItem()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/ImageQualityMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private initForceImageItem()V
    .locals 7

    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_camera_force_image_quality"

    const v3, 0x7f0a0272

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v4}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    iget-object v6, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/menu/SeparatorMenuItem;

    const v1, 0x7f0a0093

    invoke-direct {v0, v1}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;

    invoke-direct {v0, p0}, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;-><init>(Lcom/android/camera/menu/ImageQualityMenuItem;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6}, Lcom/android/camera/menu/ImageQualityMenuItem;->setItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v2}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    iget-object v2, p0, Lcom/android/camera/menu/ImageQualityMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->imageQuality:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const v1, 0x7f0a026b

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ImageQualityMenuItem;->setSummary(I)V

    return-void

    :sswitch_0
    const v1, 0x7f0a0265

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0a026d

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0a0264

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0a026c

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0a0263

    goto :goto_0

    :sswitch_5
    const v1, 0x7f0a0262

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3c -> :sswitch_2
        0x46 -> :sswitch_3
        0x50 -> :sswitch_4
        0x5a -> :sswitch_5
    .end sparse-switch
.end method
