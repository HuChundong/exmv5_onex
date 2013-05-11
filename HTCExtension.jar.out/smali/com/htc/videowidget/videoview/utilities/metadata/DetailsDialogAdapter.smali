.class public Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsDialogAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListPrimaryText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListSecondaryText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V
    .locals 2
    .parameter "_context"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 38
    return-void
.end method

.method private refineList()V
    .locals 18

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    .line 50
    .local v5, res:Landroid/content/res/Resources;
    if-nez v5, :cond_1

    .line 52
    sget-object v15, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->TAG:Ljava/lang/String;

    const-string v16, "[refineList] res is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, title:Ljava/lang/String;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a

    .line 60
    move-object v8, v14

    .line 65
    .local v8, strFileName:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 67
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, strPathName:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090014

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getDate()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, strModifiedDate:Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090015

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getVideoWidth()I

    move-result v4

    .line 86
    .local v4, iVideoWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getVideoHeight()I

    move-result v3

    .line 87
    .local v3, iVideoHeight:I
    if-lez v4, :cond_5

    if-lez v3, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x2040367

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getBitRate()I

    move-result v1

    .line 94
    .local v1, iBitrate:I
    if-lez v1, :cond_6

    .line 96
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v1, 0x3e8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " kbps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, strBitrate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090019

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v6           #strBitrate:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getFileSize()I

    move-result v2

    .line 102
    .local v2, iFileSize:I
    if-lez v2, :cond_7

    .line 104
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, strFileSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x2040367

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v9           #strFileSize:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getDuration()I

    move-result v15

    invoke-static {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, strDuration:Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090016

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-interface {v15}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, strType:Ljava/lang/String;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090017

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_9
    const-string v12, ""

    .line 124
    .local v12, strStatus:Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v16, 0x6090018

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    .end local v1           #iBitrate:I
    .end local v2           #iFileSize:I
    .end local v3           #iVideoHeight:I
    .end local v4           #iVideoWidth:I
    .end local v7           #strDuration:Ljava/lang/String;
    .end local v8           #strFileName:Ljava/lang/String;
    .end local v10           #strModifiedDate:Ljava/lang/String;
    .end local v11           #strPathName:Ljava/lang/String;
    .end local v12           #strStatus:Ljava/lang/String;
    .end local v13           #strType:Ljava/lang/String;
    :cond_a
    const-string v8, "no title"

    .restart local v8       #strFileName:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private static stringForTime(I)Ljava/lang/String;
    .locals 8
    .parameter "timeMs"

    .prologue
    const/16 v7, 0xa

    .line 192
    div-int/lit16 v4, p0, 0x3e8

    .line 194
    .local v4, totalSeconds:I
    rem-int/lit8 v3, v4, 0x3c

    .line 195
    .local v3, seconds:I
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 196
    .local v1, minutes:I
    div-int/lit16 v0, v4, 0xe10

    .line 198
    .local v0, hours:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, ret:Ljava/lang/StringBuilder;
    if-lez v0, :cond_0

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    if-lt v1, v7, :cond_1

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_0
    if-lt v3, v7, :cond_2

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 206
    :cond_1
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_2
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 168
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 134
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- getView, position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-nez p2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x6030004

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 144
    :cond_0
    const v2, 0x60b000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 145
    .local v1, htcListItemColorIcon:Lcom/htc/widget/HtcListItemColorIcon;
    const v2, 0x60b000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 146
    .local v0, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    if-nez p1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 157
    return-object p2

    .line 153
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->refineList()V

    .line 181
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

.method public setMeta(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->mData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 41
    return-void
.end method
