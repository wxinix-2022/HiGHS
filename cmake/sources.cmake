set(include_dirs
  ${CMAKE_SOURCE_DIR}/extern
  ${CMAKE_SOURCE_DIR}/extern/filereader
  ${CMAKE_SOURCE_DIR}/extern/pdqsort
  ${CMAKE_SOURCE_DIR}/extern/zstr
  ${CMAKE_SOURCE_DIR}/src
  ${CMAKE_SOURCE_DIR}/src/interfaces
  ${CMAKE_SOURCE_DIR}/src/io
  ${CMAKE_SOURCE_DIR}/src/ipm
  ${CMAKE_SOURCE_DIR}/src/ipm/ipx
  ${CMAKE_SOURCE_DIR}/src/ipm/basiclu
  ${CMAKE_SOURCE_DIR}/src/lp_data
  ${CMAKE_SOURCE_DIR}/src/mip
  ${CMAKE_SOURCE_DIR}/src/model
  ${CMAKE_SOURCE_DIR}/src/parallel
  ${CMAKE_SOURCE_DIR}/src/pdlp
  ${CMAKE_SOURCE_DIR}/src/pdlp/cupdlp
  ${CMAKE_SOURCE_DIR}/src/presolve
  ${CMAKE_SOURCE_DIR}/src/qpsolver
  ${CMAKE_SOURCE_DIR}/src/simplex
  ${CMAKE_SOURCE_DIR}/src/test
  ${CMAKE_SOURCE_DIR}/src/util
  $<BUILD_INTERFACE:${HIGHS_BINARY_DIR}>)

set(cupdlp_sources
  pdlp/cupdlp/cupdlp_cs.c
  pdlp/cupdlp/cupdlp_linalg.c
  pdlp/cupdlp/cupdlp_proj.c
  pdlp/cupdlp/cupdlp_restart.c
  pdlp/cupdlp/cupdlp_scaling_cuda.c
  pdlp/cupdlp/cupdlp_solver.c
  pdlp/cupdlp/cupdlp_step.c
  pdlp/cupdlp/cupdlp_utils.c)

set(cupdlp_headers
  pdlp/cupdlp/cupdlp_cs.h
  pdlp/cupdlp/cupdlp_defs.h
  pdlp/cupdlp/cupdlp_linalg.h
  pdlp/cupdlp/cupdlp_proj.h
  pdlp/cupdlp/cupdlp_restart.h
  pdlp/cupdlp/cupdlp_scaling_cuda.h
  pdlp/cupdlp/cupdlp_solver.h
  pdlp/cupdlp/cupdlp_step.h
  pdlp/cupdlp/cupdlp_utils.c)

set(basiclu_sources
  ipm/basiclu/basiclu_factorize.c
  ipm/basiclu/basiclu_get_factors.c
  ipm/basiclu/basiclu_initialize.c
  ipm/basiclu/basiclu_object.c
  ipm/basiclu/basiclu_solve_dense.c
  ipm/basiclu/basiclu_solve_for_update.c
  ipm/basiclu/basiclu_solve_sparse.c
  ipm/basiclu/basiclu_update.c
  ipm/basiclu/lu_build_factors.c
  ipm/basiclu/lu_condest.c
  ipm/basiclu/lu_dfs.c
  ipm/basiclu/lu_factorize_bump.c
  ipm/basiclu/lu_file.c
  ipm/basiclu/lu_garbage_perm.c
  ipm/basiclu/lu_initialize.c
  ipm/basiclu/lu_internal.c
  ipm/basiclu/lu_markowitz.c
  ipm/basiclu/lu_matrix_norm.c
  ipm/basiclu/lu_pivot.c
  ipm/basiclu/lu_residual_test.c
  ipm/basiclu/lu_setup_bump.c
  ipm/basiclu/lu_singletons.c
  ipm/basiclu/lu_solve_dense.c
  ipm/basiclu/lu_solve_for_update.c
  ipm/basiclu/lu_solve_sparse.c
  ipm/basiclu/lu_solve_symbolic.c
  ipm/basiclu/lu_solve_triangular.c
  ipm/basiclu/lu_update.c)

set(basiclu_headers
  ipm/basiclu/basiclu_factorize.h
  ipm/basiclu/basiclu_get_factors.h
  ipm/basiclu/basiclu_initialize.h
  ipm/basiclu/basiclu_obj_factorize.h
  ipm/basiclu/basiclu_obj_free.h
  ipm/basiclu/basiclu_obj_get_factors.h
  ipm/basiclu/basiclu_obj_initialize.h
  ipm/basiclu/basiclu_obj_solve_dense.h
  ipm/basiclu/basiclu_obj_solve_for_update.h
  ipm/basiclu/basiclu_obj_solve_sparse.h
  ipm/basiclu/basiclu_obj_update.h
  ipm/basiclu/basiclu_object.h
  ipm/basiclu/basiclu_solve_dense.h
  ipm/basiclu/basiclu_solve_for_update.h
  ipm/basiclu/basiclu_solve_sparse.h
  ipm/basiclu/basiclu_update.h
  ipm/basiclu/basiclu.h
  ipm/basiclu/lu_def.h
  ipm/basiclu/lu_file.h
  ipm/basiclu/lu_internal.h
  ipm/basiclu/lu_list.h)

set(ipx_sources
  ipm/ipx/basiclu_kernel.cc
  ipm/ipx/basiclu_wrapper.cc
  ipm/ipx/basis.cc
  ipm/ipx/conjugate_residuals.cc
  ipm/ipx/control.cc
  ipm/ipx/crossover.cc
  ipm/ipx/diagonal_precond.cc
  ipm/ipx/forrest_tomlin.cc
  ipm/ipx/guess_basis.cc
  ipm/ipx/indexed_vector.cc
  ipm/ipx/info.cc
  ipm/ipx/ipm.cc
  ipm/ipx/ipx_c.cc
  ipm/ipx/iterate.cc
  ipm/ipx/kkt_solver_basis.cc
  ipm/ipx/kkt_solver_diag.cc
  ipm/ipx/kkt_solver.cc
  ipm/ipx/linear_operator.cc
  ipm/ipx/lp_solver.cc
  ipm/ipx/lu_factorization.cc
  ipm/ipx/lu_update.cc
  ipm/ipx/maxvolume.cc
  ipm/ipx/model.cc
  ipm/ipx/normal_matrix.cc
  ipm/ipx/sparse_matrix.cc
  ipm/ipx/sparse_utils.cc
  ipm/ipx/splitted_normal_matrix.cc
  ipm/ipx/starting_basis.cc
  ipm/ipx/symbolic_invert.cc
  ipm/ipx/timer.cc
  ipm/ipx/utils.cc)

set(ipx_headers
  ipm/ipx/basiclu_kernel.h
  ipm/ipx/basiclu_wrapper.h
  ipm/ipx/basis.h
  ipm/ipx/conjugate_residuals.h
  ipm/ipx/control.h
  ipm/ipx/crossover.h
  ipm/ipx/diagonal_precond.h
  ipm/ipx/forrest_tomlin.h
  ipm/ipx/guess_basis.h
  ipm/ipx/indexed_vector.h
  ipm/ipx/info.h
  ipm/ipx/ipm.h
  ipm/ipx/ipx_c.h
  ipm/ipx/ipx_config.h
  ipm/ipx/ipx_info.h
  ipm/ipx/ipx_internal.h
  ipm/ipx/ipx_parameters.h
  ipm/ipx/ipx_status.h
  ipm/ipx/iterate.h
  ipm/ipx/kkt_solver_basis.h
  ipm/ipx/kkt_solver_diag.h
  ipm/ipx/kkt_solver.h
  ipm/ipx/linear_operator.h
  ipm/ipx/lp_solver.h
  ipm/ipx/lu_factorization.h
  ipm/ipx/lu_update.h
  ipm/ipx/maxvolume.h
  ipm/ipx/model.h
  ipm/ipx/multistream.h
  ipm/ipx/normal_matrix.h
  ipm/ipx/power_method.h
  ipm/ipx/sparse_matrix.h
  ipm/ipx/sparse_utils.h
  ipm/ipx/splitted_normal_matrix.h
  ipm/ipx/starting_basis.h
  ipm/ipx/symbolic_invert.h
  ipm/ipx/timer.h
  ipm/ipx/utils.h)

set(highs_sources
    ../extern/filereaderlp/reader.cpp
    interfaces/highs_c_api.cpp
    io/Filereader.cpp
    io/FilereaderEms.cpp
    io/FilereaderLp.cpp
    io/FilereaderMps.cpp
    io/HighsIO.cpp
    io/HMpsFF.cpp
    io/HMPSIO.cpp
    io/LoadOptions.cpp
    ipm/IpxWrapper.cpp
    lp_data/Highs.cpp
    lp_data/HighsCallback.cpp
    lp_data/HighsDebug.cpp
    lp_data/HighsInfo.cpp
    lp_data/HighsInfoDebug.cpp
    lp_data/HighsDeprecated.cpp
    lp_data/HighsInterface.cpp
    lp_data/HighsLp.cpp
    lp_data/HighsLpUtils.cpp
    lp_data/HighsModelUtils.cpp
    lp_data/HighsOptions.cpp
    lp_data/HighsRanging.cpp
    lp_data/HighsSolution.cpp
    lp_data/HighsSolutionDebug.cpp
    lp_data/HighsSolve.cpp
    lp_data/HighsStatus.cpp
    mip/HighsCliqueTable.cpp
    mip/HighsConflictPool.cpp
    mip/HighsCutGeneration.cpp
    mip/HighsCutPool.cpp
    mip/HighsDebugSol.cpp
    mip/HighsDomain.cpp
    mip/HighsDynamicRowMatrix.cpp
    mip/HighsGFkSolve.cpp
    mip/HighsImplications.cpp
    mip/HighsLpAggregator.cpp
    mip/HighsLpRelaxation.cpp
    mip/HighsMipSolver.cpp
    mip/HighsMipSolverData.cpp
    mip/HighsModkSeparator.cpp
    mip/HighsNodeQueue.cpp
    mip/HighsObjectiveFunction.cpp
    mip/HighsPathSeparator.cpp
    mip/HighsPrimalHeuristics.cpp
    mip/HighsPseudocost.cpp
    mip/HighsRedcostFixing.cpp
    mip/HighsSearch.cpp
    mip/HighsSeparation.cpp
    mip/HighsSeparator.cpp
    mip/HighsTableauSeparator.cpp
    mip/HighsTransformedLp.cpp
    model/HighsHessian.cpp
    model/HighsHessianUtils.cpp
    model/HighsModel.cpp
    parallel/HighsTaskExecutor.cpp
    pdlp/CupdlpWrapper.cpp
    presolve/HighsPostsolveStack.cpp
    presolve/HighsSymmetry.cpp
    presolve/HPresolve.cpp
    presolve/HPresolveAnalysis.cpp
    presolve/ICrash.cpp
    presolve/ICrashUtil.cpp
    presolve/ICrashX.cpp
    presolve/PresolveComponent.cpp
    qpsolver/a_asm.cpp
    qpsolver/a_quass.cpp
    qpsolver/basis.cpp
    qpsolver/perturbation.cpp
    qpsolver/quass.cpp
    qpsolver/ratiotest.cpp
    qpsolver/scaling.cpp
    simplex/HEkk.cpp
    simplex/HEkkControl.cpp
    simplex/HEkkDebug.cpp
    simplex/HEkkDual.cpp
    simplex/HEkkDualMulti.cpp
    simplex/HEkkDualRHS.cpp
    simplex/HEkkDualRow.cpp
    simplex/HEkkInterface.cpp
    simplex/HEkkPrimal.cpp
    simplex/HighsSimplexAnalysis.cpp
    simplex/HSimplex.cpp
    simplex/HSimplexDebug.cpp
    simplex/HSimplexNla.cpp
    simplex/HSimplexNlaDebug.cpp
    simplex/HSimplexNlaFreeze.cpp
    simplex/HSimplexNlaProductForm.cpp
    simplex/HSimplexReport.cpp
    test/KktCh2.cpp
    test/DevKkt.cpp
    util/HFactor.cpp
    util/HFactorDebug.cpp
    util/HFactorExtend.cpp
    util/HFactorRefactor.cpp
    util/HFactorUtils.cpp
    util/HighsHash.cpp
    util/HighsLinearSumBounds.cpp
    util/HighsMatrixPic.cpp
    util/HighsMatrixUtils.cpp
    util/HighsSort.cpp
    util/HighsSparseMatrix.cpp
    util/HighsUtils.cpp
    util/HSet.cpp
    util/HVectorBase.cpp
    util/stringutil.cpp)

# add catch header?
set(highs_headers
    ../extern/filereaderlp/builder.hpp
    ../extern/filereaderlp/def.hpp
    ../extern/filereaderlp/model.hpp
    ../extern/filereaderlp/reader.hpp
    ../extern/pdqsort/pdqsort.h
    ../extern/zstr/strict_fstream.hpp
    ../extern/zstr/zstr.hpp
    interfaces/highs_c_api.h
    io/Filereader.h
    io/FilereaderEms.h
    io/FilereaderLp.h
    io/FilereaderMps.h
    io/HighsIO.h
    io/HMpsFF.h
    io/HMPSIO.h
    io/LoadOptions.h
    ipm/IpxSolution.h
    ipm/IpxWrapper.h
    lp_data/HConst.h
    lp_data/HighsAnalysis.h
    lp_data/HighsCallback.h
    lp_data/HighsCallbackStruct.h
    lp_data/HighsDebug.h
    lp_data/HighsInfo.h
    lp_data/HighsInfoDebug.h
    lp_data/HighsLp.h
    lp_data/HighsLpSolverObject.h
    lp_data/HighsLpUtils.h
    lp_data/HighsModelUtils.h
    lp_data/HighsOptions.h
    lp_data/HighsRanging.h
    lp_data/HighsRuntimeOptions.h
    lp_data/HighsSolution.h
    lp_data/HighsSolutionDebug.h
    lp_data/HighsSolve.h
    lp_data/HighsStatus.h
    lp_data/HStruct.h
    mip/HighsCliqueTable.h
    mip/HighsConflictPool.h
    mip/HighsCutGeneration.h
    mip/HighsCutPool.h
    mip/HighsDebugSol.h
    mip/HighsDomain.h
    mip/HighsDomainChange.h
    mip/HighsDynamicRowMatrix.h
    mip/HighsGFkSolve.h
    mip/HighsImplications.h
    mip/HighsLpAggregator.h
    mip/HighsLpRelaxation.h
    mip/HighsMipSolver.h
    mip/HighsMipSolverData.h
    mip/HighsModkSeparator.h
    mip/HighsNodeQueue.h
    mip/HighsObjectiveFunction.h
    mip/HighsPathSeparator.h
    mip/HighsPrimalHeuristics.h
    mip/HighsPseudocost.h
    mip/HighsRedcostFixing.h
    mip/HighsSearch.h
    mip/HighsSeparation.h
    mip/HighsSeparator.h
    mip/HighsTableauSeparator.h
    mip/HighsTransformedLp.h
    model/HighsHessian.h
    model/HighsHessianUtils.h
    model/HighsModel.h
    parallel/HighsBinarySemaphore.h
    parallel/HighsCacheAlign.h
    parallel/HighsCombinable.h
    parallel/HighsMutex.h
    parallel/HighsParallel.h
    parallel/HighsRaceTimer.h
    parallel/HighsSchedulerConstants.h
    parallel/HighsSpinMutex.h
    parallel/HighsSplitDeque.h
    parallel/HighsTask.h
    parallel/HighsTaskExecutor.h
    pdlp/CupdlpWrapper.h
    presolve/HighsPostsolveStack.h
    presolve/HighsSymmetry.h
    presolve/HPresolve.h
    presolve/HPresolveAnalysis.h
    presolve/ICrash.h
    presolve/ICrashUtil.h
    presolve/ICrashX.h
    presolve/PresolveComponent.h
    qpsolver/a_asm.hpp
    qpsolver/a_quass.hpp
    qpsolver/basis.hpp
    qpsolver/crashsolution.hpp
    qpsolver/dantzigpricing.hpp
    qpsolver/devexpricing.hpp
    qpsolver/eventhandler.hpp
    qpsolver/factor.hpp
    qpsolver/feasibility_bounded.hpp
    qpsolver/feasibility_highs.hpp
    qpsolver/feasibility_quass.hpp
    qpsolver/feasibility.hpp
    qpsolver/gradient.hpp
    qpsolver/instance.hpp
    qpsolver/matrix.hpp
    qpsolver/perturbation.hpp
    qpsolver/pricing.hpp
    qpsolver/qpconst.hpp
    qpsolver/quass.hpp
    qpsolver/ratiotest.hpp
    qpsolver/runtime.hpp
    qpsolver/scaling.hpp
    qpsolver/settings.hpp
    qpsolver/snippets.hpp
    qpsolver/statistics.hpp
    qpsolver/steepestedgepricing.hpp
    qpsolver/vector.hpp
    simplex/HApp.h
    simplex/HEkk.h
    simplex/HEkkDual.h
    simplex/HEkkDualRHS.h
    simplex/HEkkDualRow.h
    simplex/HEkkPrimal.h
    simplex/HighsSimplexAnalysis.h
    simplex/HSimplex.h
    simplex/HSimplexDebug.h
    simplex/HSimplexNla.h
    simplex/HSimplexReport.h
    simplex/SimplexConst.h
    simplex/SimplexStruct.h
    simplex/SimplexTimer.h
    test/DevKkt.h
    test/KktCh2.h
    util/FactorTimer.h
    util/HFactor.h
    util/HFactorConst.h
    util/HFactorDebug.h
    util/HighsCDouble.h
    util/HighsComponent.h
    util/HighsDataStack.h
    util/HighsDisjointSets.h
    util/HighsHash.h
    util/HighsHashTree.h
    util/HighsInt.h
    util/HighsIntegers.h
    util/HighsLinearSumBounds.h
    util/HighsMatrixPic.h
    util/HighsMatrixSlice.h
    util/HighsMatrixUtils.h
    util/HighsRandom.h
    util/HighsRbTree.h
    util/HighsSort.h
    util/HighsSparseMatrix.h
    util/HighsSparseVectorSum.h
    util/HighsSplay.h
    util/HighsTimer.h
    util/HighsUtils.h
    util/HSet.h
    util/HVector.h
    util/HVectorBase.h
    util/stringutil.h
    Highs.h
  )
