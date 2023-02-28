import SwiftUI

struct ColumnsearchCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {}, label: {
                Image("img_search_deep_purple_500")
            })
            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(32.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(ColorConstants.DeepPurple5001e))
            .padding(.top, getRelativeHeight(12.0))
            .padding(.horizontal, getRelativeWidth(12.0))
            Text(StringConstants.kLbl123)
                .font(FontScheme.kFigtreeSemiBold(size: getRelativeHeight(16.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(16.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(12.0))
            Text(StringConstants.kLblTodaySClicks)
                .font(FontScheme.kFigtreeRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray500)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.all, getRelativeWidth(12.0))
                .padding(.vertical, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(12.0))
        }
        .frame(width: getRelativeWidth(118.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0, bottomRight: 8.0)
            .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct ColumnsearchCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnsearchCell()
 }
 } */
