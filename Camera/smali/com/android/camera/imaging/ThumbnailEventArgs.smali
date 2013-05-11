.class public Lcom/android/camera/imaging/ThumbnailEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "ThumbnailEventArgs.java"


# instance fields
.field public final contentUri:Landroid/net/Uri;

.field public final filePath:Lcom/android/camera/io/Path;

.field public final thumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/imaging/ThumbnailEventArgs;->contentUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/camera/imaging/ThumbnailEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object p3, p0, Lcom/android/camera/imaging/ThumbnailEventArgs;->thumbnailImage:Landroid/graphics/Bitmap;

    return-void
.end method
