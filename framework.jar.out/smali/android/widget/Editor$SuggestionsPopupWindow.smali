.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 3326
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3327
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 3328
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 3329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    .line 3330
    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3293
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3293
    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3293
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3293
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 11

    .prologue
    .line 3508
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3509
    .local v4, pos:I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 3510
    .local v5, spannable:Landroid/text/Spannable;
    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 3512
    .local v8, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 3513
    move-object v0, v8

    .local v0, arr$:[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 3514
    .local v7, suggestionSpan:Landroid/text/style/SuggestionSpan;
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3515
    .local v6, start:I
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 3516
    .local v1, end:I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3521
    .end local v1           #end:I
    .end local v6           #start:I
    .end local v7           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3522
    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .locals 7
    .parameter "suggestionInfo"
    .parameter "unionStart"
    .parameter "unionEnd"

    .prologue
    .line 3704
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 3705
    .local v2, text:Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3706
    .local v1, spanStart:I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 3709
    .local v0, spanEnd:I
    sub-int v4, v1, p2

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    .line 3710
    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 3718
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3719
    .local v3, textAsString:Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3720
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3721
    return-void
.end method

.method private updateSuggestions()Z
    .locals 35

    .prologue
    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    .line 3592
    .local v21, spannable:Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v27

    .line 3594
    .local v27, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v27

    array-length v10, v0

    .line 3596
    .local v10, nbSpans:I
    if-nez v10, :cond_0

    const/16 v30, 0x0

    .line 3699
    :goto_0
    return v30

    .line 3598
    :cond_0
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 3600
    .local v20, spanUnionStart:I
    const/16 v19, 0x0

    .line 3602
    .local v19, spanUnionEnd:I
    const/4 v8, 0x0

    .line 3603
    .local v8, misspelledSpan:Landroid/text/style/SuggestionSpan;
    const/16 v29, 0x0

    .line 3605
    .local v29, underlineColor:I
    const/16 v17, 0x0

    .local v17, spanIndex:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v10, :cond_7

    .line 3606
    aget-object v26, v27, v17

    .line 3607
    .local v26, suggestionSpan:Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 3608
    .local v18, spanStart:I
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 3609
    .local v16, spanEnd:I
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 3610
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3612
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_1

    .line 3613
    move-object/from16 v8, v26

    .line 3617
    :cond_1
    if-nez v17, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v29

    .line 3619
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v28

    .line 3620
    .local v28, suggestions:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v11, v0

    .line 3621
    .local v11, nbSuggestions:I
    const/16 v23, 0x0

    .local v23, suggestionIndex:I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v11, :cond_4

    .line 3622
    aget-object v22, v28, v23

    .line 3624
    .local v22, suggestion:Ljava/lang/String;
    const/16 v25, 0x0

    .line 3625
    .local v25, suggestionIsDuplicate:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_3

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3628
    .local v15, otherSuggestionSpan:Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 3629
    .local v14, otherSpanStart:I
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 3630
    .local v13, otherSpanEnd:I
    move/from16 v0, v18

    if-ne v0, v14, :cond_5

    move/from16 v0, v16

    if-ne v0, v13, :cond_5

    .line 3631
    const/16 v25, 0x1

    .line 3637
    .end local v13           #otherSpanEnd:I
    .end local v14           #otherSpanStart:I
    .end local v15           #otherSuggestionSpan:Landroid/text/style/SuggestionSpan;
    :cond_3
    if-nez v25, :cond_6

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3639
    .local v24, suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3640
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3641
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3643
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3645
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 3647
    move/from16 v17, v10

    .line 3605
    .end local v6           #i:I
    .end local v22           #suggestion:Ljava/lang/String;
    .end local v24           #suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .end local v25           #suggestionIsDuplicate:Z
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 3625
    .restart local v6       #i:I
    .restart local v22       #suggestion:Ljava/lang/String;
    .restart local v25       #suggestionIsDuplicate:Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 3621
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 3654
    .end local v6           #i:I
    .end local v11           #nbSuggestions:I
    .end local v16           #spanEnd:I
    .end local v18           #spanStart:I
    .end local v22           #suggestion:Ljava/lang/String;
    .end local v23           #suggestionIndex:I
    .end local v25           #suggestionIsDuplicate:Z
    .end local v26           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v28           #suggestions:[Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_8

    .line 3655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    .line 3654
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3659
    :cond_8
    if-eqz v8, :cond_9

    .line 3660
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 3661
    .local v9, misspelledStart:I
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3662
    .local v7, misspelledEnd:I
    if-ltz v9, :cond_9

    if-le v7, v9, :cond_9

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3664
    .restart local v24       #suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v24

    iput-object v8, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3665
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3666
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x10403c5

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3668
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3671
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3676
    .end local v7           #misspelledEnd:I
    .end local v9           #misspelledStart:I
    .end local v24           #suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3677
    .restart local v24       #suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3678
    const/16 v30, -0x2

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3679
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x10403c6

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3681
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3683
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    new-instance v31, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v31 .. v31}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3686
    :cond_a
    if-nez v29, :cond_b

    .line 3688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 3695
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 3699
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 3690
    :cond_b
    const v5, 0x3ecccccd

    .line 3691
    .local v5, BACKGROUND_TRANSPARENCY:F
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3ecccccd

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v12, v0

    .line 3692
    .local v12, newAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const v31, 0xffffff

    and-int v31, v31, v29

    shl-int/lit8 v32, v12, 0x18

    add-int v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_5
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .parameter "positionY"

    .prologue
    .line 3580
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 3581
    .local v1, height:I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3582
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 5

    .prologue
    .line 3334
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010373

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3336
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3337
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3341
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3342
    .local v1, r:Landroid/content/res/Resources;
    const-string/jumbo v2, "zzzhtc_spinner_dropdown_background"

    const-string v3, "drawable"

    const-string v4, "com.android.internal"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3343
    .local v0, id:I
    if-nez v0, :cond_0

    .line 3344
    const-string v2, "Editor"

    const-string v3, "Can not find @com.android.internal:drawable/zzzhtc_spinner_dropdown_background"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :goto_0
    return-void

    .line 3346
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected getTextOffset()I
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 3575
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 3587
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3588
    return-void
.end method

.method protected initContentView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3351
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3352
    .local v1, listView:Landroid/widget/ListView;
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 3353
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3354
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3355
    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3358
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    .line 3359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3360
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    aput-object v3, v2, v0

    .line 3359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3362
    :cond_0
    return-void
.end method

.method public isShowingUp()Z
    .locals 1

    .prologue
    .line 3365
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    .prologue
    const/high16 v8, -0x8000

    .line 3539
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3540
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3542
    .local v1, horizontalMeasure:I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3545
    .local v4, verticalMeasure:I
    const/4 v6, 0x0

    .line 3546
    .local v6, width:I
    const/4 v5, 0x0

    .line 3547
    .local v5, view:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    .line 3548
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3549
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3550
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 3551
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3555
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x4000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 3559
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3560
    .local v3, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 3561
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3562
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3563
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3565
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3566
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 34
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3725
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Editable;

    .line 3726
    .local v6, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v29, v0

    aget-object v20, v29, p3

    .line 3728
    .local v20, suggestionInfo:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 3729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 3730
    .local v17, spanUnionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 3731
    .local v16, spanUnionEnd:I
    if-ltz v17, :cond_2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 3733
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v29

    if-eqz v29, :cond_1

    if-eqz v17, :cond_0

    add-int/lit8 v29, v17, -0x1

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 3737
    :cond_0
    add-int/lit8 v16, v16, 0x1

    .line 3739
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3741
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 3849
    .end local v16           #spanUnionEnd:I
    .end local v17           #spanUnionStart:I
    :goto_0
    return-void

    .line 3745
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 3746
    .local v15, spanStart:I
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 3747
    .local v14, spanEnd:I
    if-ltz v15, :cond_4

    if-gt v14, v15, :cond_5

    .line 3749
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0

    .line 3753
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 3755
    .local v13, originalText:Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 3756
    new-instance v9, Landroid/content/Intent;

    const-string v29, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3757
    .local v9, intent:Landroid/content/Intent;
    const-string/jumbo v29, "word"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/widget/Editor;->SCATDPostScan_internal(Ljava/lang/String;)V

    .line 3848
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0

    .line 3772
    :cond_6
    const-class v29, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, v29

    invoke-interface {v6, v15, v14, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/SuggestionSpan;

    .line 3774
    .local v23, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v23

    array-length v10, v0

    .line 3775
    .local v10, length:I
    new-array v0, v10, [I

    move-object/from16 v26, v0

    .line 3776
    .local v26, suggestionSpansStarts:[I
    new-array v0, v10, [I

    move-object/from16 v24, v0

    .line 3777
    .local v24, suggestionSpansEnds:[I
    new-array v0, v10, [I

    move-object/from16 v25, v0

    .line 3778
    .local v25, suggestionSpansFlags:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v10, :cond_8

    .line 3779
    aget-object v21, v23, v7

    .line 3780
    .local v21, suggestionSpan:Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v29

    aput v29, v26, v7

    .line 3781
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v29

    aput v29, v24, v7

    .line 3782
    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v29

    aput v29, v25, v7

    .line 3785
    invoke-virtual/range {v21 .. v21}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v22

    .line 3786
    .local v22, suggestionSpanFlags:I
    and-int/lit8 v29, v22, 0x2

    if-lez v29, :cond_7

    .line 3787
    and-int/lit8 v22, v22, -0x3

    .line 3788
    and-int/lit8 v22, v22, -0x2

    .line 3789
    invoke-virtual/range {v21 .. v22}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3778
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3793
    .end local v21           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v22           #suggestionSpanFlags:I
    :cond_8
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v27, v0

    .line 3794
    .local v27, suggestionStart:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    move/from16 v19, v0

    .line 3795
    .local v19, suggestionEnd:I
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3797
    .local v18, suggestion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3798
    .local v4, beforeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v14, v1}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3802
    .local v3, afterText:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 3804
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3805
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_9

    .line 3806
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v8, v0, v13, v1}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    .line 3812
    .end local v8           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v28

    .line 3813
    .local v28, suggestions:[Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v29, v0

    aput-object v13, v28, v29

    .line 3816
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v29

    sub-int v30, v14, v15

    sub-int v11, v29, v30

    .line 3817
    .local v11, lengthDifference:I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v10, :cond_b

    .line 3821
    aget v29, v26, v7

    move/from16 v0, v29

    if-gt v0, v15, :cond_a

    aget v29, v24, v7

    move/from16 v0, v29

    if-lt v0, v14, :cond_a

    .line 3828
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    aget-object v30, v23, v7

    aget v31, v26, v7

    aget v32, v24, v7

    add-int v32, v32, v11

    aget v33, v25, v7

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3817
    :cond_a
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3830
    :catch_0
    move-exception v5

    .line 3831
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v29, "Editor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Before Text=\'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\' ,after replace=\'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    const-string v29, "Editor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Span start="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ,Span end="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ,suggestion="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    const-string v29, "Editor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SuggestionSpan start="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v26, v7

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ,SuggestionSpan end="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v24, v7

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3843
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    add-int v12, v14, v11

    .line 3844
    .local v12, newCursorPosition:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v12}, Landroid/widget/TextView;->setCursorPosition_internal(II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3845
    :catch_1
    move-exception v29

    goto/16 :goto_1
.end method

.method public onParentLostFocus()V
    .locals 1

    .prologue
    .line 3369
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3370
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3527
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_1

    .line 3535
    :cond_0
    :goto_0
    return-void

    .line 3529
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3530
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 3531
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 3532
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3533
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_0
.end method
