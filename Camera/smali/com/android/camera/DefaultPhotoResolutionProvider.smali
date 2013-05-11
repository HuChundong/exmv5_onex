.class public Lcom/android/camera/DefaultPhotoResolutionProvider;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"

# interfaces
.implements Lcom/android/camera/IPhotoResolutionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DefaultPhotoResolutionProvider$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultPhotoResolutionPrevider"

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

.field private static final m_ResolutionSettingKeys:[Ljava/lang/String;


# instance fields
.field protected final cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_capture_resolution_photo_main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_capture_resolution_photo_3D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_capture_resolution_photo_2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefaultResolutions()V

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
    iput-object p1, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

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
    iget-object v2, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v1

    goto :goto_0
.end method

.method private getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v4, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "DefaultPhotoResolutionPrevider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResolutionList() - Unknown camera type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v4

    if-ne v4, p2, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    move-object v2, v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static initializeDefault3mpResolutions(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initializeDefault5mpResolutions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2592x1456:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_1280x720:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOVSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1936:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_1280x960:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2592x1552:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_1280x768:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1952:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static initializeDefault8mpResolutions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_3264x2448:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_3264x1840:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOVSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1936:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2592x1456:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2048x1536:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    return-void

    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_3264x1952:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_4_3_2592x1952:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2592x1552:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/camera/Resolution;

    sget-object v1, Lcom/android/camera/Resolution;->PHOTO_5_3_2048x1216:Lcom/android/camera/Resolution;

    sget-object v2, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static initializeDefaultResolutions()V
    .locals 7

    const/16 v6, 0x43

    const/4 v5, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/Resolution;->Capture_1080P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$HTCCameraSensor$Sensor_Type:[I

    invoke-static {}, Lcom/android/camera/HTCCameraSensor;->getType()Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault3mpResolutions(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v3

    if-nez v3, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v6, :cond_7

    :cond_3
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1440x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_640x480:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v4, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v3, v4, :cond_d

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v3

    if-nez v3, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v6, :cond_a

    :cond_5
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1920x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_640x368:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1600x1200:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1_6M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1456x1088:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_4_3_1280x960:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1600x896:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1_6M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1456x828:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_16_9_1280x720:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v4, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1_6M2ndCam()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_5_3_1456x880:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->PHOTO_5_3_640x384:Lcom/android/camera/Resolution;

    sget-object v5, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/Resolution;-><init>(Lcom/android/camera/Resolution;Lcom/android/camera/Resolution$Category;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault8mpResolutions(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->initializeDefault5mpResolutions(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getContactPhotoResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1

    sget-object v0, Lcom/android/camera/Resolution;->CONTACT_1_1_720x720:Lcom/android/camera/Resolution;

    return-object v0
.end method

.method public getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "DefaultPhotoResolutionPrevider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize() - Unknown camera type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sget v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    sget v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/camera/imaging/Size;

    sget v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sget v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .locals 9
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p2, :cond_0

    const-string v7, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - No resolution list specified"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    const-string v7, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Empty resolution list"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionFromSettings(Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    invoke-virtual {v4, p3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    :cond_5
    iget-object v6, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v2, 0x1

    :goto_1
    const/4 v5, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_2
    if-ltz v0, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    invoke-virtual {v6, p3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v0

    :cond_6
    if-ltz v5, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto :goto_0

    :pswitch_0
    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    :cond_7
    move v2, v7

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    const-string v6, "DefaultPhotoResolutionPrevider"

    const-string v8, "getResolution() - Resolution not found, use maximum resolution"

    invoke-static {v6, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "DefaultPhotoResolutionPrevider"

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
    const-string v0, "pref_capture_resolution_photo_main"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_capture_resolution_photo_3D"

    goto :goto_0

    :pswitch_2
    const-string v0, "pref_capture_resolution_photo_2nd"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetResolutions()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/DefaultPhotoResolutionProvider;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/android/camera/DefaultPhotoResolutionProvider;->m_ResolutionSettingKeys:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->remove([Ljava/lang/String;)V

    return-void
.end method
