extension CardsCarouselView {
    private func createDragGesture(_ viewModel: CardsCarouselViewModel) -> some Gesture {
        DragGesture()
            .onChanged {
                // Allow ONLY horizontal swipes
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


extension CardsCarouselView {
    private func createDragGesture(_ viewModel: CardsCarouselViewModel) -> some Gesture {
        DragGesture()
            .onChanged {
                // Allow ONLY vertical swipes
                if abs($0.predictedEndTranslation.height) > abs($0.predictedEndTranslation.width) {
                    displacement = $0.translation.height
                    isDragging = true
                    swipeDirection = displacement > 0 ? .down : .up
                    calculateInformationVisibility()
                }
            }
            .onEnded {
                if abs($0.predictedEndTranslation.height) > abs($0.predictedEndTranslation.width) {
                    userInteractionEnded(viewModel: viewModel, width: $0.translation.height)
                }
            }
    }

    private func emptyDragGesture() -> some Gesture {
        DragGesture()
    }
}

