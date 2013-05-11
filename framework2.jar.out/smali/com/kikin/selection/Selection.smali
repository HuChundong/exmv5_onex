.class public Lcom/kikin/selection/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/selection/Selection$Mode;
    }
.end annotation


# instance fields
.field private mAlt:Ljava/lang/String;

.field private mH1:Ljava/lang/String;

.field private mH2:Ljava/lang/String;

.field private mHl:Ljava/lang/String;

.field private mHref:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mMode:Lcom/kikin/selection/Selection$Mode;

.field private mPosthl:Ljava/lang/String;

.field private mPrehl:Ljava/lang/String;

.field private mSelectionLanguage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchedWord:Ljava/lang/String;

.field private mType:Lcom/kikin/selection/SelectionType;

.field private mUrl:Landroid/net/Uri;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 40
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 46
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 52
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .parameter "selection"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 40
    sget-object v2, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 46
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 52
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 60
    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, selectionMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/kikin/selection/Selection$Mode;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 62
    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 63
    const-string v2, "selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 64
    const-string v2, "textBeforeSelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 65
    const-string v2, "textAfterSelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 67
    const-string v2, "selectionType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, selectionType:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/kikin/selection/SelectionType;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 69
    const-string v2, "selectionLanguage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 70
    const-string v2, "touchedWord"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 72
    const-string v2, "keywords"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 73
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 74
    const-string v2, "h1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 75
    const-string v2, "h2"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 76
    const-string v2, "tag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 77
    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 78
    const-string v2, "alt"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 79
    const-string v2, "href"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 80
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 81
    return-void

    .line 61
    .end local v1           #selectionType:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    goto/16 :goto_0

    .line 68
    .restart local v1       #selectionType:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 40
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 46
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 52
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 89
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 90
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 92
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "keywords"
    .parameter "title"
    .parameter "h1TagText"
    .parameter "h2TagText"
    .parameter "tagName"
    .parameter "alt"
    .parameter "href"
    .parameter "value"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 40
    sget-object v1, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 104
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 105
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 109
    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local p8
    :goto_0
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 110
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p9
    :goto_1
    iput-object p9, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 111
    if-eqz p10, :cond_2

    invoke-virtual {p10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .end local p10
    :goto_2
    iput-object p10, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 112
    if-eqz p11, :cond_3

    invoke-virtual {p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .end local p11
    :goto_3
    iput-object p11, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 113
    if-eqz p12, :cond_4

    invoke-virtual {p12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .end local p12
    :goto_4
    iput-object p12, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 114
    if-eqz p13, :cond_5

    invoke-virtual {p13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .end local p13
    :goto_5
    iput-object p13, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 115
    if-eqz p14, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .end local p14
    :goto_6
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 116
    return-void

    .line 109
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    .restart local p12
    .restart local p13
    .restart local p14
    :cond_0
    const/4 p8, 0x0

    goto :goto_0

    .line 110
    .end local p8
    :cond_1
    const/4 p9, 0x0

    goto :goto_1

    .line 111
    .end local p9
    :cond_2
    const/4 p10, 0x0

    goto :goto_2

    .line 112
    .end local p10
    :cond_3
    const/4 p11, 0x0

    goto :goto_3

    .line 113
    .end local p11
    :cond_4
    const/4 p12, 0x0

    goto :goto_4

    .line 114
    .end local p12
    :cond_5
    const/4 p13, 0x0

    goto :goto_5

    .line 115
    .end local p13
    :cond_6
    const/16 p14, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getH1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    return-object v0
.end method

.method public getH2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/kikin/selection/Selection$Mode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method

.method public getPosthl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrehl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setH1(Ljava/lang/String;)V
    .locals 1
    .parameter "h1"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 202
    return-void

    .line 201
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setH2(Ljava/lang/String;)V
    .locals 1
    .parameter "h2"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 210
    return-void

    .line 209
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setHl(Ljava/lang/String;)V
    .locals 0
    .parameter "hl"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 226
    return-void

    .line 225
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/kikin/selection/Selection$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 166
    return-void
.end method

.method public setPosthl(Ljava/lang/String;)V
    .locals 0
    .parameter "posthl"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setPrehl(Ljava/lang/String;)V
    .locals 0
    .parameter "prehl"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setSelectionLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setSelectionType(Lcom/kikin/selection/SelectionType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 178
    return-void
.end method

.method public setSelectionType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 181
    invoke-static {p1}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 182
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 250
    return-void

    .line 249
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 266
    return-void

    .line 265
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .parameter "touchedWord"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 274
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "mode"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v2}, Lcom/kikin/selection/Selection$Mode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "content"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "selection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "textBeforeSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "textAfterSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "selectionType"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v2}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "selectionLanguage"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "touchedWord"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "title"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "h1"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "h2"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "tag"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "url"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    const-string v1, "alt"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "href"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "value"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 284
    .local v1, ret:Lorg/json/JSONObject;
    const-string v2, "mode"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v3}, Lcom/kikin/selection/Selection$Mode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    .local v0, data:Lorg/json/JSONObject;
    const-string v2, "text"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "hl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "prehl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v2, "posthl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v2, "tw"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v2, "h1"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v2, "h2"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v2, "tag"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v2, "title"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v2, "keywords"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v2, "alt"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v2, "href"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v2, "ul"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v2, "type"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v3}, Lcom/kikin/selection/SelectionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "\nSelection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "\nPre text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "\nPost text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\nType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\nLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "\nTouched word:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "\nKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "\nTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, "\nH1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, "\nH2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "\nTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, "\nAlt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "\nHref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\nMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "\nUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
