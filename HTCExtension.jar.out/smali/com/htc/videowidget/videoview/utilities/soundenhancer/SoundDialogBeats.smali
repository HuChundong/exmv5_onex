.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;
.super Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;
.source "SoundDialogBeats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getCurrentList(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 11
    .parameter "currentStatus"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;->getSoundList()Ljava/util/ArrayList;

    move-result-object v4

    .line 35
    .local v4, soundEffectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 37
    const/4 v5, 0x0

    .line 38
    .local v5, strSoundEffectStyles:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, intEffectIconResId:[I
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats$1;->$SwitchMap$com$htc$videowidget$videoview$utilities$soundenhancer$Constant$SoundEffectState:[I

    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 60
    :goto_0
    if-nez v5, :cond_1

    .line 80
    :cond_0
    :pswitch_0
    return-void

    .line 45
    :pswitch_1
    new-array v5, v10, [Ljava/lang/String;

    .end local v5           #strSoundEffectStyles:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x204024c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x204024b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 48
    .restart local v5       #strSoundEffectStyles:[Ljava/lang/String;
    new-array v1, v10, [I

    .end local v1           #intEffectIconResId:[I
    fill-array-data v1, :array_0

    .line 51
    .restart local v1       #intEffectIconResId:[I
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    .local v2, item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    const-string v3, ""

    .line 65
    .local v3, seStyle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 67
    aget-object v3, v5, v0

    .line 68
    new-instance v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    .end local v2           #item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    invoke-direct {v2, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v2       #item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    aget v6, v1, v0

    iput v6, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    .line 71
    iget v6, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    if-lez v6, :cond_2

    .line 72
    invoke-virtual {v2, v8}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->setIconVisibility(Z)V

    .line 75
    :goto_2
    iput-boolean v8, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    .line 76
    iput-boolean v9, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 77
    iput-boolean v8, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    .line 78
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v2, v9}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->setIconVisibility(Z)V

    goto :goto_2

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 48
    :array_0
    .array-data 0x4
        0xa0t 0x0t 0x8t 0x2t
        0x8dt 0x0t 0x8t 0x2t
    .end array-data
.end method

.method public getEffectFromListIndex(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 4
    .parameter "listIndex"
    .parameter "currentStatus"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, effect:I
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats$1;->$SwitchMap$com$htc$videowidget$videoview$utilities$soundenhancer$Constant$SoundEffectState:[I

    invoke-virtual {p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    const-string v1, "SoundEffectDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getEffectFromListIndex], index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return effect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v0

    .line 92
    :pswitch_0
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x3

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getIndexFromCurrentEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 4
    .parameter "currentEffect"
    .parameter "currentStatus"

    .prologue
    const/4 v0, 0x0

    .line 110
    const-string v1, "SoundEffectDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getIndexFromCurrentEffect], currentEffect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats$1;->$SwitchMap$com$htc$videowidget$videoview$utilities$soundenhancer$Constant$SoundEffectState:[I

    invoke-virtual {p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 117
    :pswitch_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected grayOutListItem(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 0
    .parameter "currentStatus"

    .prologue
    .line 29
    return-void
.end method
