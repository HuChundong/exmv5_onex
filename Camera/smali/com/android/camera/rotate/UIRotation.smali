.class public final enum Lcom/android/camera/rotate/UIRotation;
.super Ljava/lang/Enum;
.source "UIRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/UIRotation$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/rotate/UIRotation; = null

.field public static final enum InverseLandscape:Lcom/android/camera/rotate/UIRotation; = null

.field public static final enum InversePortrait:Lcom/android/camera/rotate/UIRotation; = null

.field public static final enum Landscape:Lcom/android/camera/rotate/UIRotation; = null

.field public static final enum Portrait:Lcom/android/camera/rotate/UIRotation; = null

.field private static final ROTATION_STABLE_RANGE:I = 0x46

.field public static final SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation; = null

.field private static final TAG:Ljava/lang/String; = "UIRotation"


# instance fields
.field public final deviceOrientation:I

.field public final surfaceRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v5, Lcom/android/camera/rotate/UIRotation;

    const-string v6, "Portrait"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v5, v6, v1, v0}, Lcom/android/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    new-instance v5, Lcom/android/camera/rotate/UIRotation;

    const-string v6, "Landscape"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {v5, v6, v3, v0}, Lcom/android/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    new-instance v5, Lcom/android/camera/rotate/UIRotation;

    const-string v6, "InversePortrait"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_2
    invoke-direct {v5, v6, v4, v0}, Lcom/android/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    new-instance v5, Lcom/android/camera/rotate/UIRotation;

    const-string v6, "InverseLandscape"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-direct {v5, v6, v2, v0}, Lcom/android/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/rotate/UIRotation;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/rotate/UIRotation;->$VALUES:[Lcom/android/camera/rotate/UIRotation;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    sput-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sput-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    goto :goto_4
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    mul-int/lit8 v0, p3, 0x5a

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    return-void
.end method

.method private static boundIn360(I)I
    .locals 1

    if-ltz p0, :cond_0

    rem-int/lit16 v0, p0, 0x168

    :goto_0
    return v0

    :cond_0
    rem-int/lit16 v0, p0, 0x168

    add-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public static fromDeviceOrientation(I)Lcom/android/camera/rotate/UIRotation;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method public static fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method public static fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;
    .locals 9

    const/4 v7, -0x1

    if-ne p1, v7, :cond_1

    const-string v7, "UIRotation"

    const-string v8, "Ubdefined orientation in fromDeviceOrientation()"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/android/camera/rotate/UIRotation;->boundIn360(I)I

    move-result p1

    if-eqz p0, :cond_2

    iget v7, p0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v7, 0x46

    invoke-static {v7}, Lcom/android/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v6

    iget v7, p0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v7, -0x46

    invoke-static {v7}, Lcom/android/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v4

    if-lt v6, v4, :cond_4

    if-lt p1, v4, :cond_2

    if-le p1, v6, :cond_0

    :cond_2
    sget-object v5, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {}, Lcom/android/camera/rotate/UIRotation;->values()[Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    iget v7, v1, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v7, 0x2d

    invoke-static {v7}, Lcom/android/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v6

    iget v7, v1, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v7, -0x2d

    invoke-static {v7}, Lcom/android/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v4

    if-lt v6, v4, :cond_5

    if-lt p1, v4, :cond_7

    if-gt p1, v6, :cond_7

    move-object v5, v1

    :cond_3
    :goto_2
    sget-object v7, Lcom/android/camera/rotate/UIRotation$1;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move-object p0, v5

    goto :goto_0

    :cond_4
    if-le p1, v6, :cond_0

    if-lt p1, v4, :cond_2

    goto :goto_0

    :cond_5
    if-le p1, v6, :cond_6

    if-lt p1, v4, :cond_7

    :cond_6
    move-object v5, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_8

    sget-object v7, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    :goto_3
    move-object p0, v7

    goto :goto_0

    :cond_8
    sget-object v7, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_3

    :pswitch_1
    if-eqz p2, :cond_9

    sget-object v7, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    :goto_4
    move-object p0, v7

    goto :goto_0

    :cond_9
    sget-object v7, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromSurfaceRotation(I)Lcom/android/camera/rotate/UIRotation;
    .locals 5

    invoke-static {}, Lcom/android/camera/rotate/UIRotation;->values()[Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget v4, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-ne v4, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/rotate/UIRotation;
    .locals 1

    const-class v0, Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/rotate/UIRotation;
    .locals 1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->$VALUES:[Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, [Lcom/android/camera/rotate/UIRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method


# virtual methods
.method public getSurfaceDegrees()I
    .locals 1

    iget v0, p0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
