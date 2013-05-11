.class public Lcom/android/camera/imaging/RawImageEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "RawImageEventArgs.java"


# instance fields
.field public final imageHeight:I

.field public final imageWidth:I

.field public final pixelFormat:Lcom/android/camera/imaging/PixelFormat;

.field public final rawImage:[B


# direct methods
.method public constructor <init>([BLcom/android/camera/imaging/PixelFormat;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    iput-object p2, p0, Lcom/android/camera/imaging/RawImageEventArgs;->pixelFormat:Lcom/android/camera/imaging/PixelFormat;

    iput p3, p0, Lcom/android/camera/imaging/RawImageEventArgs;->imageWidth:I

    iput p4, p0, Lcom/android/camera/imaging/RawImageEventArgs;->imageHeight:I

    return-void
.end method
