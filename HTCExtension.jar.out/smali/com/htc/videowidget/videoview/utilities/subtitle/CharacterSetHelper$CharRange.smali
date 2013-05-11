.class Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
.super Ljava/lang/Object;
.source "CharacterSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharRange"
.end annotation


# instance fields
.field public final first:C

.field public final last:C


# direct methods
.method private constructor <init>(CC)V
    .locals 0
    .parameter "first"
    .parameter "last"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-char p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->first:C

    .line 40
    iput-char p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->last:C

    .line 41
    return-void
.end method

.method static final newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 45
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    invoke-direct {v0, p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;-><init>(CC)V

    return-object v0
.end method
