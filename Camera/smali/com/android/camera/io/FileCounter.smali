.class public final Lcom/android/camera/io/FileCounter;
.super Ljava/lang/Object;
.source "FileCounter.java"


# instance fields
.field public final mainCounter:I

.field public final subCounter:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/io/FileCounter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/io/FileCounter;->mainCounter:I

    iput p2, p0, Lcom/android/camera/io/FileCounter;->subCounter:I

    return-void
.end method
