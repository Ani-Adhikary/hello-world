extension CardsCarouselView {
    private func createDragGesture(_ viewModel: CardsCarouselViewModel) -> some Gesture {
        DragGesture()
            .onChanged {
                if abs($0.predictedEndTranslation.width) > abs($0.predictedEndTranslation.height) {
                    displacement = $0.translation.width
                    isDragging = true
                    swipeDirection = displacement > 0 ? .right : .left
                    calculateInformationVisibility()
                }
            }
            .onEnded {
                if abs($0.predictedEndTranslation.width) > abs($0.predictedEndTranslation.height) {
                    userInteractionEnded(viewModel: viewModel, width: $0.translation.width)
                }
            }
    }

    private func emptyDragGesture() -> some Gesture {
        DragGesture()
    }
}


