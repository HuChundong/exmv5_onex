.class Lcom/htc/videowidget/videoview/utilities/AudioHelper$1;
.super Ljava/lang/Object;
.source "AudioHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/AudioHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/AudioHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/AudioHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/AudioHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 57
    return-void
.end method
