.class public Lcom/android/camera/DrawPreviewFilterEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "DrawPreviewFilterEventArgs.java"


# instance fields
.field public final canvas:Landroid/graphics/Canvas;

.field public final previewBounds:Landroid/graphics/Rect;

.field public final rotation:Lcom/android/camera/rotate/UIRotation;

.field public final size:Lcom/android/camera/imaging/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/imaging/Size;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->canvas:Landroid/graphics/Canvas;

    iput-object p4, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->rotation:Lcom/android/camera/rotate/UIRotation;

    iput-object p3, p0, Lcom/android/camera/DrawPreviewFilterEventArgs;->size:Lcom/android/camera/imaging/Size;

    return-void
.end method
