# Copyright 2017 Battelle Energy Alliance, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""
Created on Jul 18 2016

@author: mandd
"""
from EntityFactoryBase import EntityFactory

from .MetricInterface import MetricInterface
from .DTW import DTW
from .SklMetric import SKL
from .PairwiseMetric import PairwiseMetric
from .CDFAreaDifference import CDFAreaDifference
from .PDFCommonArea import PDFCommonArea
from .ScipyMetric import ScipyMetric
from .DSS import DSS

factory = EntityFactory('Metrics')
factory.registerAllSubtypes(MetricInterface)
