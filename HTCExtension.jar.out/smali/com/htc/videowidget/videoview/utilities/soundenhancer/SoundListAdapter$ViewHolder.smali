.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SoundListAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btn:Lcom/htc/widget/HtcRadioButton;

.field effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRadioButton;

    .line 35
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 36
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
