.class public Lcom/android/camera/AutoFocusEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "AutoFocusEventArgs.java"


# instance fields
.field public final focusAreas:[Landroid/graphics/RectF;

.field public final focusMode:Lcom/android/camera/AutoFocusMode;

.field public final handle:Lcom/android/camera/Handle;

.field public final isSuccessful:Z

.field public final meteringAreas:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/AutoFocusMode;",
            "Lcom/android/camera/Handle;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_1
    iput-object p3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-boolean p5, p0, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    iput-object p4, p0, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    return-void

    :cond_0
    new-array v0, v1, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-array v0, v1, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    goto :goto_1
.end method
