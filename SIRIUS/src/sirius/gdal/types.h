/**
 * Copyright (C) 2018 CS - Systemes d'Information (CS-SI)
 *
 * This file is part of Sirius
 *
 *     https://github.com/CS-SI/SIRIUS
 *
 * Sirius is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sirius is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sirius.  If not, see <https://www.gnu.org/licenses/>.
 */

#ifndef SIRIUS_GDAL_TYPES_H_
#define SIRIUS_GDAL_TYPES_H_

#include <memory>
#include <type_traits>

#include <gdal.h>
#include <gdal_priv.h>

namespace sirius {
namespace gdal {

namespace detail {

/**
 * \brief Deleter of GDALDataset for smart pointer
 */
struct DatasetDeleter {
    void operator()(::GDALDataset* dataset) { ::GDALClose(dataset); }
};

}  // namespace detail

using DatasetUPtr = std::unique_ptr<::GDALDataset, detail::DatasetDeleter>;

}  // namespace gdal
}  // namespace sirius

#endif  // SIRIUS_GDAL_TYPES_H_
