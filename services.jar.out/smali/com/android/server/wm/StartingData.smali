.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "_pkg"
    .parameter "_theme"
    .parameter "_compatInfo"
    .parameter "_nonLocalizedLabel"
    .parameter "_labelRes"
    .parameter "_icon"
    .parameter "_windowFlags"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    .line 43
    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 44
    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 45
    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    .line 46
    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    .line 47
    iput p7, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "_pkg"
    .parameter "_theme"
    .parameter "_compatInfo"
    .parameter "_nonLocalizedLabel"
    .parameter "_labelRes"
    .parameter "_icon"
    .parameter "_windowFlags"
    .parameter "_thumbnail"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    .line 59
    iput-object p8, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method
