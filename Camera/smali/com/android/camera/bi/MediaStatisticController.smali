.class public abstract Lcom/android/camera/bi/MediaStatisticController;
.super Lcom/android/camera/component/UIComponent;
.source "MediaStatisticController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/bi/MediaStatisticController$5;
    }
.end annotation


# instance fields
.field protected mComposeKey:Ljava/lang/String;

.field protected mComposeKeysTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsResetToDefault:Z

.field protected mResetToDefaultCompleted:Z

.field protected m_mediaTaken:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    iput-boolean v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mResetToDefaultCompleted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/bi/MediaStatisticController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    iget-object v0, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method protected getCameraTypeKeyValue()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/camera/bi/MediaStatisticController$5;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getEffectKeyValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    instance-of v2, v1, Lcom/android/camera/effect/NoneEffect;

    if-eqz v2, :cond_0

    const-string v2, "0"

    :goto_0
    return-object v2

    :cond_0
    instance-of v2, v1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v2, :cond_1

    const-string v2, "21"

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v2, :cond_2

    const-string v2, "22"

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v2, :cond_3

    const-string v2, "23"

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v2, :cond_4

    const-string v2, "24"

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v2, :cond_5

    const-string v2, "25"

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lcom/android/camera/effect/NashEffect;

    if-eqz v2, :cond_6

    const-string v2, "26"

    goto :goto_0

    :cond_6
    instance-of v2, v1, Lcom/android/camera/effect/VintageHighEffect;

    if-eqz v2, :cond_7

    const-string v2, "27"

    goto :goto_0

    :cond_7
    instance-of v2, v1, Lcom/android/camera/effect/VintageRedEffect;

    if-eqz v2, :cond_8

    const-string v2, "28"

    goto :goto_0

    :cond_8
    instance-of v2, v1, Lcom/android/camera/effect/VintageGreenEffect;

    if-eqz v2, :cond_9

    const-string v2, "29"

    goto :goto_0

    :cond_9
    instance-of v2, v1, Lcom/android/camera/effect/GrayscaleEffect;

    if-eqz v2, :cond_a

    const-string v2, "1"

    goto :goto_0

    :cond_a
    instance-of v2, v1, Lcom/android/camera/effect/SepiaEffect;

    if-eqz v2, :cond_b

    const-string v2, "2"

    goto :goto_0

    :cond_b
    instance-of v2, v1, Lcom/android/camera/effect/NegativeEffect;

    if-eqz v2, :cond_c

    const-string v2, "3"

    goto :goto_0

    :cond_c
    instance-of v2, v1, Lcom/android/camera/effect/SolarizeEffect;

    if-eqz v2, :cond_d

    const-string v2, "4"

    goto :goto_0

    :cond_d
    instance-of v2, v1, Lcom/android/camera/effect/PosterizeEffect;

    if-eqz v2, :cond_e

    const-string v2, "5"

    goto :goto_0

    :cond_e
    instance-of v2, v1, Lcom/android/camera/effect/AquaEffect;

    if-eqz v2, :cond_f

    const-string v2, "6"

    goto :goto_0

    :cond_f
    const-string v2, "0"

    goto :goto_0
.end method

.method protected getMediaCountInComposeKeyTable(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getReviewDurationKeyValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_camera_review_duration"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "0"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "2"

    goto :goto_0

    :cond_1
    const-string v1, "3s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3"

    goto :goto_0

    :cond_2
    const-string v1, "5s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "5"

    goto :goto_0

    :cond_3
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "10"

    goto :goto_0

    :cond_4
    const-string v1, "no_limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "*"

    goto :goto_0

    :cond_5
    const-string v1, "0"

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$1;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$2;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$3;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/bi/MediaStatisticController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/bi/MediaStatisticController$4;-><init>(Lcom/android/camera/bi/MediaStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract rebuildComposeKey()Ljava/lang/String;
.end method

.method protected rebuildComposeKeyTable(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/bi/MediaStatisticController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setMediaCountInComposeKeyTable(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract writeBehaviorData(Ljava/lang/String;)V
.end method
