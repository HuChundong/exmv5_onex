.class Landroid/webkit/EditableSelectActionModeCallback;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/webkit/SelectionCallback;


# static fields
.field private static final BUTTON_ID_BLUE:I = 0x16

.field private static final BUTTON_ID_COPY:I = 0x9

.field private static final BUTTON_ID_CUT:I = 0xa

.field private static final BUTTON_ID_FONTSTYLE:I = 0xd

.field private static final BUTTON_ID_GREEN:I = 0x15

.field private static final BUTTON_ID_HIGHLIGHT:I = 0xc

.field private static final BUTTON_ID_IMAGESTYLE:I = 0xe

.field private static final BUTTON_ID_PASTE:I = 0xb

.field private static final BUTTON_ID_RED:I = 0x18

.field private static final BUTTON_ID_SELECTALL:I = 0x8

.field private static final BUTTON_ID_UNHIGHLIGHT:I = 0x19

.field private static final BUTTON_ID_YELLOW:I = 0x17

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG:Z = false

.field private static final SELECTION_CONTAIN_MORETHAN_ONEIMAGE:I = 0x0

.field private static final SELECTION_CONTAIN_NO_IMAGE:I = 0x2

.field private static final SELECTION_CONTAIN_ONLY_ONE_IMAGE:I = 0x1


# instance fields
.field private final G_EXTEND:I

.field private final G_FONTSTYLE:I

.field private final G_HIGHLIGHT:I

.field private final G_IMAGESTYLE:I

.field private Group_status:I

.field private final SELECT_FONT_ALIGNMENT:I

.field private final SELECT_FONT_ALIGNMENT_JUSTIFY:I

.field private final SELECT_FONT_ALIGNMENT_LEFT:I

.field private final SELECT_FONT_ALIGNMENT_RIGHT:I

.field private final SELECT_FONT_COLOR:I

.field private final SELECT_FONT_COLOR_BLACK:I

.field private final SELECT_FONT_COLOR_BLUE:I

.field private final SELECT_FONT_COLOR_GRAY:I

.field private final SELECT_FONT_COLOR_GREEN:I

.field private final SELECT_FONT_COLOR_RED:I

.field private final SELECT_FONT_COLOR_WHITE:I

.field private final SELECT_FONT_COLOR_YELLOW:I

.field private final SELECT_FONT_NONE:I

.field private final SELECT_FONT_SETTINGS:I

.field private final SELECT_FONT_SETTINGS_BOLDFACE:I

.field private final SELECT_FONT_SETTINGS_ITALIC:I

.field private final SELECT_FONT_SETTINGS_UNDERLINE:I

.field private final SELECT_FONT_SIZE:I

.field private final SELECT_FONT_SIZE_LARGE:I

.field private final SELECT_FONT_SIZE_LARGEST:I

.field private final SELECT_FONT_SIZE_LARGEST_PX:I

.field private final SELECT_FONT_SIZE_LARGE_PX:I

.field private final SELECT_FONT_SIZE_MEDIUM:I

.field private final SELECT_FONT_SIZE_MEDIUM_PX:I

.field private final SELECT_FONT_SIZE_SMALL:I

.field private final SELECT_FONT_SIZE_SMALL_PX:I

.field bFontBold:Z

.field bFontItalic:Z

.field bFontUnderline:Z

.field fWebViewTextScale:F

.field highlightMode:Z

.field icon_blue:I

.field icon_copy:I

.field icon_cut:I

.field icon_fontstyle:I

.field icon_green:I

.field icon_highlight:I

.field icon_imagestyle:I

.field icon_paste:I

.field icon_red:I

.field icon_selectall:I

.field icon_unhighlight:I

.field icon_yellow:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mBUTTON_ID:I

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/dialog/HtcAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

.field private mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

.field private mIsTextSelected:Z

.field private mMenu:Landroid/view/Menu;

.field mSelectionContainImage:I

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field m_bFontStyleKeyUpDown:Z

.field private final m_nBlackColor_select:I

.field m_nBlueColor:I

.field private final m_nBlueColor_select:I

.field private final m_nGrayColor_select:I

.field m_nGreenColor:I

.field private final m_nGreenColor_select:I

.field m_nImgNode:[I

.field m_nRedColor:I

.field private final m_nRedColor_select:I

.field private final m_nWhiteColor_select:I

.field m_nYellowColor:I

.field private final m_nYellowColor_select:I

.field m_rectImgAttr:Landroid/graphics/Rect;

.field m_strImgPath:[Ljava/lang/String;

.field private onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

.field private resLoaded:Z

.field str_blue:I

.field str_copy:I

.field str_cut:I

.field str_fontstyle:I

.field str_green:I

.field str_highlight:I

.field str_imagestyle:I

.field str_paste:I

.field str_red:I

.field str_selectall:I

.field str_unhighlight:I

.field str_yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableSelectActionModeCallback;->HTC_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mIsTextSelected:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mBUTTON_ID:I

    .line 70
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->G_EXTEND:I

    .line 71
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->G_FONTSTYLE:I

    .line 72
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->G_IMAGESTYLE:I

    .line 73
    iput v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->G_HIGHLIGHT:I

    .line 77
    iput-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->resLoaded:Z

    .line 78
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->Group_status:I

    .line 83
    const v0, 0x4020046

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_selectall:I

    .line 84
    const v0, 0x4020030

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_cut:I

    .line 85
    const v0, 0x402002f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_copy:I

    .line 86
    const v0, 0x4020038

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_paste:I

    .line 87
    const v0, 0x4020032

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_highlight:I

    .line 88
    const v0, 0x4020031

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_fontstyle:I

    .line 89
    const v0, 0x4020045

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_imagestyle:I

    .line 91
    const v0, 0x204014f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_selectall:I

    .line 92
    const v0, 0x1040003

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_cut:I

    .line 93
    const v0, 0x1040001

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_copy:I

    .line 94
    const v0, 0x104000b

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_paste:I

    .line 95
    const v0, 0x204022e

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_highlight:I

    .line 96
    const v0, 0x40700ad

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_fontstyle:I

    .line 97
    const v0, 0x40700b4

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_imagestyle:I

    .line 108
    const v0, 0x4020035

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_green:I

    .line 109
    const v0, 0x4020033

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_blue:I

    .line 110
    const v0, 0x4020037

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_yellow:I

    .line 111
    const v0, 0x4020036

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_red:I

    .line 112
    const v0, 0x4020034

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_unhighlight:I

    .line 114
    const v0, 0x204022f

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_green:I

    .line 115
    const v0, 0x2040230

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_blue:I

    .line 116
    const v0, 0x2040231

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_yellow:I

    .line 117
    const v0, 0x2040232

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_red:I

    .line 118
    const v0, 0x2040233

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_unhighlight:I

    .line 135
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE:I

    .line 136
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR:I

    .line 137
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SETTINGS:I

    .line 138
    iput v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_ALIGNMENT:I

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_NONE:I

    .line 144
    iput v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_SMALL:I

    .line 145
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_MEDIUM:I

    .line 146
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_LARGE:I

    .line 147
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_LARGEST:I

    .line 151
    iput v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_SMALL_PX:I

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_MEDIUM_PX:I

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_LARGE_PX:I

    .line 154
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SIZE_LARGEST_PX:I

    .line 158
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_WHITE:I

    .line 159
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_BLACK:I

    .line 160
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_GRAY:I

    .line 161
    iput v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_RED:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_GREEN:I

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_YELLOW:I

    .line 164
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_COLOR_BLUE:I

    .line 167
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SETTINGS_UNDERLINE:I

    .line 168
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SETTINGS_BOLDFACE:I

    .line 169
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_SETTINGS_ITALIC:I

    .line 172
    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_ALIGNMENT_LEFT:I

    .line 173
    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_ALIGNMENT_JUSTIFY:I

    .line 174
    iput v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->SELECT_FONT_ALIGNMENT_RIGHT:I

    .line 185
    iput-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_bFontStyleKeyUpDown:Z

    .line 186
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->fWebViewTextScale:F

    .line 193
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nImgNode:[I

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 195
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_strImgPath:[Ljava/lang/String;

    .line 197
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nWhiteColor_select:I

    .line 198
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlackColor_select:I

    .line 199
    const/16 v0, 0x7f

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGrayColor_select:I

    .line 200
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor_select:I

    .line 201
    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor_select:I

    .line 202
    invoke-static {v3, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor_select:I

    .line 203
    invoke-static {v3, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor_select:I

    .line 206
    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor:I

    .line 207
    const v0, 0xa6e1ff

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor:I

    .line 208
    const v0, 0xffef99

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor:I

    .line 209
    const v0, 0xffa6a6

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor:I

    .line 211
    iput-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->highlightMode:Z

    .line 529
    new-instance v0, Landroid/webkit/EditableSelectActionModeCallback$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableSelectActionModeCallback$1;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    .line 537
    new-instance v0, Landroid/webkit/EditableSelectActionModeCallback$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableSelectActionModeCallback$2;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontStyle(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlackColor_select:I

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGrayColor_select:I

    return v0
.end method

.method static synthetic access$1200(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor_select:I

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor_select:I

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor_select:I

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor_select:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableSelectActionModeCallback;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/EditableSelectActionModeCallback;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontsize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontcolor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogSettings(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogAlignment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/EditableSelectActionModeCallback;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/EditableSelectActionModeCallback;->getFontSizeIdx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/EditableSelectActionModeCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nWhiteColor_select:I

    return v0
.end method

.method private getDialogFontStyleContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 854
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 858
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #context:Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 863
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method private getFontColorIdx(I)I
    .locals 1
    .parameter "nFontcolor_current"

    .prologue
    .line 894
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nWhiteColor_select:I

    if-ne p1, v0, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    .line 896
    :cond_0
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlackColor_select:I

    if-ne p1, v0, :cond_1

    .line 897
    const/4 v0, 0x1

    goto :goto_0

    .line 898
    :cond_1
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGrayColor_select:I

    if-ne p1, v0, :cond_2

    .line 899
    const/4 v0, 0x2

    goto :goto_0

    .line 900
    :cond_2
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor_select:I

    if-ne p1, v0, :cond_3

    .line 901
    const/4 v0, 0x3

    goto :goto_0

    .line 902
    :cond_3
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor_select:I

    if-ne p1, v0, :cond_4

    .line 903
    const/4 v0, 0x4

    goto :goto_0

    .line 904
    :cond_4
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor_select:I

    if-ne p1, v0, :cond_5

    .line 905
    const/4 v0, 0x5

    goto :goto_0

    .line 906
    :cond_5
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor_select:I

    if-ne p1, v0, :cond_6

    .line 907
    const/4 v0, 0x6

    goto :goto_0

    .line 909
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontSizeIdx(I)I
    .locals 3
    .parameter "nFontsize_current"

    .prologue
    .line 868
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    iget v0, v1, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 872
    .local v0, nWebViewTextScale:I
    int-to-float v1, v0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->fWebViewTextScale:F

    .line 873
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->fWebViewTextScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 875
    .end local v0           #nWebViewTextScale:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 888
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 877
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 879
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 881
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 883
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 12
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 922
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCoreImpl;->getImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 924
    .local v3, stringarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 953
    :goto_0
    return v5

    .line 927
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, p1, v7

    .line 928
    aget-object v5, p1, v7

    const-string v9, "SELECTION_CONTAIN_MORETHAN_ONEIMAGE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 929
    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v7

    .line 933
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, left:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 935
    .local v4, top:I
    const/4 v2, 0x0

    .line 937
    .local v2, right:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    if-nez v5, :cond_2

    .line 938
    add-int/lit8 v2, v1, 0x0

    .line 942
    :goto_1
    const/4 v0, 0x0

    .line 943
    .local v0, bottom:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    if-nez v5, :cond_3

    .line 944
    add-int/lit8 v0, v4, 0x0

    .line 949
    :goto_2
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v7

    iget-object v9, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v9

    invoke-virtual {p3, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 951
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move v5, v8

    .line 953
    goto/16 :goto_0

    .line 940
    .end local v0           #bottom:I
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 946
    .restart local v0       #bottom:I
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method private loadMenuItem(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 240
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 243
    const/16 v0, 0x8

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_selectall:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    const/16 v0, 0x9

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_copy:I

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 245
    const/16 v0, 0xa

    const/4 v1, 0x2

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_cut:I

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 246
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_paste:I

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_selectall:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 251
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_copy:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_cut:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 253
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_paste:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    const/16 v0, 0xf

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_highlight:I

    invoke-interface {p1, v5, v7, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 257
    const/16 v0, 0xd

    const/4 v1, 0x6

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_fontstyle:I

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 259
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_highlight:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_fontstyle:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 263
    const/4 v0, 0x2

    const/16 v1, 0xe

    const/4 v2, 0x7

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_imagestyle:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 265
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_imagestyle:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 268
    const/16 v0, 0x15

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_green:I

    invoke-interface {p1, v4, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    const/16 v0, 0x16

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_blue:I

    invoke-interface {p1, v4, v0, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    const/16 v0, 0x17

    const/16 v1, 0xd

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_yellow:I

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    const/16 v0, 0x18

    const/16 v1, 0xe

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_red:I

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    const/16 v0, 0x19

    const/16 v1, 0x10

    iget v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->str_unhighlight:I

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 274
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_green:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_blue:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_yellow:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_red:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 278
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->icon_unhighlight:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    return-void
.end method

.method private onCreateDialogAlignment(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 809
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 813
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x40700b2

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x408003b

    const/4 v3, -0x1

    new-instance v4, Landroid/webkit/EditableSelectActionModeCallback$14;

    invoke-direct {v4, p0}, Landroid/webkit/EditableSelectActionModeCallback$14;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableSelectActionModeCallback$13;

    invoke-direct {v3, p0}, Landroid/webkit/EditableSelectActionModeCallback$13;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 848
    .local v0, dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 849
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 850
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    .line 851
    return-void
.end method

.method private onCreateDialogFontStyle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 548
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 553
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x40700ae

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x4080037

    new-instance v3, Landroid/webkit/EditableSelectActionModeCallback$6;

    invoke-direct {v3, p0}, Landroid/webkit/EditableSelectActionModeCallback$6;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Landroid/webkit/EditableSelectActionModeCallback$5;

    invoke-direct {v3, p0}, Landroid/webkit/EditableSelectActionModeCallback$5;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableSelectActionModeCallback$4;

    invoke-direct {v2, p0}, Landroid/webkit/EditableSelectActionModeCallback$4;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableSelectActionModeCallback$3;

    invoke-direct {v2, p0}, Landroid/webkit/EditableSelectActionModeCallback$3;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 608
    .local v0, dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 609
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 610
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    .line 611
    return-void
.end method

.method private onCreateDialogFontcolor(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 677
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 682
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x40700b0

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x4080039

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v3}, Landroid/webkit/EditableWebViewImpl;->getForeColor()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableSelectActionModeCallback;->getFontColorIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableSelectActionModeCallback$10;

    invoke-direct {v4, p0}, Landroid/webkit/EditableSelectActionModeCallback$10;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableSelectActionModeCallback$9;

    invoke-direct {v3, p0}, Landroid/webkit/EditableSelectActionModeCallback$9;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 734
    .local v0, dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 735
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 736
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    .line 737
    return-void
.end method

.method private onCreateDialogFontsize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 615
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 620
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x40700af

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x4080038

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v3}, Landroid/webkit/EditableWebViewImpl;->getFontSize()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableSelectActionModeCallback;->getFontSizeIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableSelectActionModeCallback$8;

    invoke-direct {v4, p0}, Landroid/webkit/EditableSelectActionModeCallback$8;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableSelectActionModeCallback$7;

    invoke-direct {v3, p0}, Landroid/webkit/EditableSelectActionModeCallback$7;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 670
    .local v0, dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 671
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 672
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    .line 673
    return-void
.end method

.method private onCreateDialogSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 741
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 745
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->getUnderlineState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontUnderline:Z

    .line 746
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->getBoldState()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontBold:Z

    .line 747
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->getItalicState()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontItalic:Z

    .line 748
    const/4 v2, 0x3

    new-array v0, v2, [Z

    iget-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontUnderline:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontBold:Z

    aput-boolean v2, v0, v4

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->bFontItalic:Z

    aput-boolean v3, v0, v2

    .line 751
    .local v0, arrayIsChecked:[Z
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x40700b1

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x408003a

    new-instance v5, Landroid/webkit/EditableSelectActionModeCallback$12;

    invoke-direct {v5, p0}, Landroid/webkit/EditableSelectActionModeCallback$12;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v2, v3, v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Landroid/webkit/EditableSelectActionModeCallback$11;

    invoke-direct {v5, p0}, Landroid/webkit/EditableSelectActionModeCallback$11;-><init>(Landroid/webkit/EditableSelectActionModeCallback;)V

    invoke-virtual {v2, v3, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 802
    .local v1, dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 803
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 804
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;

    .line 805
    return-void

    .end local v0           #arrayIsChecked:[Z
    .end local v1           #dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    :cond_1
    move v2, v4

    .line 745
    goto :goto_0

    :cond_2
    move v2, v4

    .line 746
    goto :goto_1

    :cond_3
    move v2, v4

    .line 747
    goto :goto_2
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 519
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 520
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method public SetImageAttr(III)V
    .locals 4
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 962
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    .line 963
    .local v0, fCurrentScale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 964
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 965
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 970
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 971
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 230
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 371
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mBUTTON_ID:I

    .line 373
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 504
    :goto_0
    :pswitch_0
    return v1

    .line 375
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectAll()V

    .line 376
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :goto_1
    move v1, v2

    .line 504
    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 381
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 385
    :pswitch_3
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 386
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 390
    :pswitch_4
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 391
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 395
    :pswitch_5
    iput-boolean v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->highlightMode:Z

    .line 396
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 400
    :pswitch_6
    invoke-direct {p0}, Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontStyle(Landroid/content/Context;)V

    goto :goto_1

    .line 439
    :pswitch_7
    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mSelectionContainImage:I

    if-ne v3, v2, :cond_0

    .line 441
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nImgNode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebViewImpl;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 443
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v3}, Landroid/webkit/EditableWebViewImpl;->getOnImageSelectedListener()Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v3}, Landroid/webkit/EditableWebViewImpl;->getOnImageSelectedListener()Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_strImgPath:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nImgNode:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v1, v5}, Landroid/webkit/EditableWebView$OnImageSelectedListener;->onImageSelected(Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 466
    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 467
    .local v0, selectionhandles:[I
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 468
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 469
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v1, v3, v4}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    .line 472
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 477
    .end local v0           #selectionhandles:[I
    :pswitch_8
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl;->SetBackColor(IZ)V

    .line 478
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 482
    :pswitch_9
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl;->SetBackColor(IZ)V

    .line 483
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 487
    :pswitch_a
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl;->SetBackColor(IZ)V

    .line 488
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 492
    :pswitch_b
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor:I

    invoke-virtual {v1, v3, v2}, Landroid/webkit/EditableWebViewImpl;->SetBackColor(IZ)V

    .line 493
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 497
    :pswitch_c
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v4}, Landroid/webkit/EditableWebViewImpl;->getBackColor()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/webkit/EditableWebViewImpl;->SetBackColor(IZ)V

    .line 498
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const/high16 v8, 0x114

    invoke-virtual {v5, v8, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 286
    iget-boolean v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->resLoaded:Z

    if-nez v5, :cond_0

    .line 287
    iput-boolean v6, p0, Landroid/webkit/EditableSelectActionModeCallback;->resLoaded:Z

    .line 288
    invoke-direct {p0, p2}, Landroid/webkit/EditableSelectActionModeCallback;->loadMenuItem(Landroid/view/Menu;)V

    .line 291
    :cond_0
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 292
    .local v2, context:Landroid/content/Context;
    const v5, 0x10403c4

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 300
    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    move-object v1, v5

    check-cast v1, Landroid/content/ClipboardManager;

    .line 301
    .local v1, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    .line 302
    .local v4, isFocusable:Z
    iget-object v5, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    .line 303
    .local v3, isEditable:Z
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    move v0, v6

    .line 310
    .local v0, canPaste:Z
    :goto_0
    const/16 v5, 0xb

    invoke-direct {p0, p2, v0, v5}, Landroid/webkit/EditableSelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 315
    const/4 v5, 0x3

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 318
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 320
    return v6

    .end local v0           #canPaste:Z
    :cond_1
    move v0, v7

    .line 303
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->highlightMode:Z

    .line 512
    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mBUTTON_ID:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mBUTTON_ID:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 515
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mBUTTON_ID:I

    .line 516
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 327
    iget-boolean v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->highlightMode:Z

    if-eqz v1, :cond_1

    .line 328
    invoke-interface {p2, v7, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 329
    invoke-interface {p2, v5, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 330
    invoke-interface {p2, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 331
    invoke-interface {p2, v6, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 365
    :cond_0
    :goto_0
    return v4

    .line 335
    :cond_1
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_strImgPath:[Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_nImgNode:[I

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/EditableSelectActionModeCallback;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mSelectionContainImage:I

    .line 338
    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mSelectionContainImage:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl;->getOnImageSelectedListener()Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v1

    if-nez v1, :cond_3

    .line 341
    :cond_2
    invoke-interface {p2, v6, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 342
    invoke-interface {p2, v4, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 344
    iget v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mSelectionContainImage:I

    if-nez v1, :cond_0

    .line 346
    invoke-interface {p2, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 355
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 356
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 359
    :cond_4
    invoke-interface {p2, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 360
    invoke-interface {p2, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 361
    invoke-interface {p2, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public setHtcStyle(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 236
    return-void
.end method

.method public setTextSelected(Z)V
    .locals 0
    .parameter "isTextSelected"

    .prologue
    .line 221
    iput-boolean p1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mIsTextSelected:Z

    .line 222
    return-void
.end method

.method public setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 214
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 215
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/EditableWebView;

    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl;->fromEditableWebView(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;

    .line 216
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 217
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 218
    return-void
.end method
