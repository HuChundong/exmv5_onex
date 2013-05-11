.class public final Lcom/android/camera/imaging/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/imaging/Size;->width:I

    iput p2, p0, Lcom/android/camera/imaging/Size;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imaging/Size;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imaging/Size;->height:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/imaging/Size;->width:I

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/imaging/Size;->height:I

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/camera/imaging/Size;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/imaging/Size;

    iget v2, p0, Lcom/android/camera/imaging/Size;->width:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/imaging/Size;->height:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/camera/imaging/Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/camera/imaging/Size;->height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
