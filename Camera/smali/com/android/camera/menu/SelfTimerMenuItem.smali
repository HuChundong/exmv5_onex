.class public Lcom/android/camera/menu/SelfTimerMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "SelfTimerMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelfTimerMenuItem"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_Items:[Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    iput-object p1, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    new-instance v1, Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;-><init>(Lcom/android/camera/menu/SelfTimerMenuItem;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_Items:[Lcom/android/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;

    invoke-virtual {p0, v0}, Lcom/android/camera/menu/SelfTimerMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/SelfTimerMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method


# virtual methods
.method public updateContent()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    sparse-switch v2, :sswitch_data_0

    const v1, 0x7f0a0069

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/menu/SelfTimerMenuItem;->setSummary(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    goto :goto_0

    :sswitch_0
    const v1, 0x7f0a006a

    goto :goto_1

    :sswitch_1
    const v1, 0x7f0a006c

    goto :goto_1

    :sswitch_2
    const v1, 0x7f0a006d

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
