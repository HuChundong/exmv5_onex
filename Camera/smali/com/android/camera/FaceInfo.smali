.class public final Lcom/android/camera/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field public final bounds:Landroid/graphics/RectF;

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FaceInfo;->bounds:Landroid/graphics/RectF;

    return-void
.end method
