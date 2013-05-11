.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;
.super Ljava/lang/Object;
.source "SoundListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedHolder"
.end annotation


# instance fields
.field checked:Lcom/htc/widget/HtcRadioButton;

.field item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;->item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter$SelectedHolder;->checked:Lcom/htc/widget/HtcRadioButton;

    return-void
.end method
