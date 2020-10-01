

--
-- Name: client UC-CLIENT-NAME; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT "UC-CLIENT-NAME" UNIQUE (name);


--
-- Name: filter UC-FILTER-NAME; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.filter
    ADD CONSTRAINT "UC-FILTER-NAME" UNIQUE (name);


--
-- Name: people UC-PEOPLE-EMAIL; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT "UC-PEOPLE-EMAIL" UNIQUE (email);


--
-- Name: assessment assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT assessment_pkey PRIMARY KEY (idassessment);


--
-- Name: assessmentquestionresponse assessmentquestionresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentquestionresponse
    ADD CONSTRAINT assessmentquestionresponse_pkey PRIMARY KEY (idassessmentquestionresponse);


--
-- Name: assessmentresponse assessmentresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentresponse
    ADD CONSTRAINT assessmentresponse_pkey PRIMARY KEY (idassessmentresponse);


--
-- Name: assessmenttype assessmenttype_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttype
    ADD CONSTRAINT assessmenttype_pkey PRIMARY KEY (idassessmenttype);


--
-- Name: assessmenttypequestion assessmenttypequestion_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestion
    ADD CONSTRAINT assessmenttypequestion_pkey PRIMARY KEY (idassessmenttypequestion);


--
-- Name: assessmenttypequestioncategory assessmenttypequestioncategory_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestioncategory
    ADD CONSTRAINT assessmenttypequestioncategory_pkey PRIMARY KEY (idassessmenttypequestioncategory);


--
-- Name: assessmenttypequestiontext assessmenttypequestiontext_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestiontext
    ADD CONSTRAINT assessmenttypequestiontext_pkey PRIMARY KEY (idassessmenttypequestiontext);


--
-- Name: assessmenttypeslang assessmenttypeslang_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypeslang
    ADD CONSTRAINT assessmenttypeslang_pkey PRIMARY KEY (id);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (idclient);


--
-- Name: clientsdemographiccustomquestion clientsdemographiccustomquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.clientsdemographiccustomquestion
    ADD CONSTRAINT clientsdemographiccustomquestion_pkey PRIMARY KEY (id);


--
-- Name: clientsfilter clientsfilter_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.clientsfilter
    ADD CONSTRAINT clientsfilter_pkey PRIMARY KEY (id);


--
-- Name: component component_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (idcomponent);


--
-- Name: demographicquestion demographicquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestion
    ADD CONSTRAINT demographicquestion_pkey PRIMARY KEY (iddemographicquestion);


--
-- Name: demographicquestionresponse demographicquestionresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestionresponse
    ADD CONSTRAINT demographicquestionresponse_pkey PRIMARY KEY (iddemographicquestionresponse);


--
-- Name: demographicquestiontext demographicquestiontext_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestiontext
    ADD CONSTRAINT demographicquestiontext_pkey PRIMARY KEY (iddemographicquestiontext);


--
-- Name: demographicvalueset demographicvalueset_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicvalueset
    ADD CONSTRAINT demographicvalueset_pkey PRIMARY KEY (iddemographicvalueset);


--
-- Name: filter filter_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (idpeople);


--
-- Name: peoplecode peoplecode_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.peoplecode
    ADD CONSTRAINT peoplecode_pkey PRIMARY KEY (idcode);


--
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (idpermission);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (idproject);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (idrole);


--
-- Name: section section_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.section
    ADD CONSTRAINT section_pkey PRIMARY KEY (idsection);


--
-- Name: slcqanswer slcqanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqanswer
    ADD CONSTRAINT slcqanswer_pkey PRIMARY KEY (idslcqanswer);


--
-- Name: slcqquadrant slcqquadrant_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqquadrant
    ADD CONSTRAINT slcqquadrant_pkey PRIMARY KEY (idslcqquadrant);


--
-- Name: slcqquestion slcqquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqquestion
    ADD CONSTRAINT slcqquestion_pkey PRIMARY KEY (idslcqquestion);


--
-- Name: slcqassessmentquestionresponse slcqquestionresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqassessmentquestionresponse
    ADD CONSTRAINT slcqquestionresponse_pkey PRIMARY KEY (idslcqassessmentquestionresponse);


--
-- Name: slcqscale slcqscales_pkey; Type: CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqscale
    ADD CONSTRAINT slcqscales_pkey PRIMARY KEY (idslcqscale);


--
-- Name: assessmenttypeslang assessmenttypeslang_idassessmenttype_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypeslang
    ADD CONSTRAINT assessmenttypeslang_idassessmenttype_fkey FOREIGN KEY (idassessmenttype) REFERENCES public.assessmenttype(idassessmenttype);


--
-- Name: clientsfilter clientsfilter_idclient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.clientsfilter
    ADD CONSTRAINT clientsfilter_idclient_fkey FOREIGN KEY (idclient) REFERENCES public.client(idclient);


--
-- Name: clientsfilter clientsfilter_idfilter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.clientsfilter
    ADD CONSTRAINT clientsfilter_idfilter_fkey FOREIGN KEY (idfilter) REFERENCES public.filter(id);


--
-- Name: assessmentdemographicquestion idassessment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentdemographicquestion
    ADD CONSTRAINT idassessment_fkey FOREIGN KEY (idassessment) REFERENCES public.assessment(idassessment) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmentresponse idassessment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentresponse
    ADD CONSTRAINT idassessment_fkey FOREIGN KEY (idassessment) REFERENCES public.assessment(idassessment) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmentquestionresponse idassessmentresponse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentquestionresponse
    ADD CONSTRAINT idassessmentresponse_fkey FOREIGN KEY (idassessmentresponse) REFERENCES public.assessmentresponse(idassessmentresponse) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: demographicquestionresponse idassessmentresponse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestionresponse
    ADD CONSTRAINT idassessmentresponse_fkey FOREIGN KEY (idassessmentresponse) REFERENCES public.assessmentresponse(idassessmentresponse) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypedemographicquestion idassessmenttype_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypedemographicquestion
    ADD CONSTRAINT idassessmenttype_fkey FOREIGN KEY (idassessmenttype) REFERENCES public.assessmenttype(idassessmenttype) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypequestion idassessmenttype_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestion
    ADD CONSTRAINT idassessmenttype_fkey FOREIGN KEY (idassessmenttype) REFERENCES public.assessmenttype(idassessmenttype) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessment idassessmenttypefk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT idassessmenttypefk_fkey FOREIGN KEY (idassessmenttype) REFERENCES public.assessmenttype(idassessmenttype) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmentquestionresponse idassessmenttypequestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentquestionresponse
    ADD CONSTRAINT idassessmenttypequestion_fkey FOREIGN KEY (idassessmenttypequestion) REFERENCES public.assessmenttypequestion(idassessmenttypequestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypequestiontext idassessmenttypequestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestiontext
    ADD CONSTRAINT idassessmenttypequestion_fkey FOREIGN KEY (idassessmenttypequestion) REFERENCES public.assessmenttypequestion(idassessmenttypequestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypequestiontext idassessmenttypequestioncategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestiontext
    ADD CONSTRAINT idassessmenttypequestioncategory_fkey FOREIGN KEY (idassessmenttypequestioncategory) REFERENCES public.assessmenttypequestioncategory(idassessmenttypequestioncategory) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: peoplerole idclient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.peoplerole
    ADD CONSTRAINT idclient_fkey FOREIGN KEY (idclient) REFERENCES public.client(idclient) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project idclient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT idclient_fkey FOREIGN KEY (idclient) REFERENCES public.client(idclient) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: section idcomponent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.section
    ADD CONSTRAINT idcomponent_fkey FOREIGN KEY (idcomponent) REFERENCES public.component(idcomponent) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmentdemographicquestion iddemographicquestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmentdemographicquestion
    ADD CONSTRAINT iddemographicquestion_fkey FOREIGN KEY (iddemographicquestion) REFERENCES public.demographicquestion(iddemographicquestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypedemographicquestion iddemographicquestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypedemographicquestion
    ADD CONSTRAINT iddemographicquestion_fkey FOREIGN KEY (iddemographicquestion) REFERENCES public.demographicquestion(iddemographicquestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: demographicquestionresponse iddemographicquestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestionresponse
    ADD CONSTRAINT iddemographicquestion_fkey FOREIGN KEY (iddemographicquestion) REFERENCES public.demographicquestion(iddemographicquestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: demographicquestiontext iddemographicquestion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicquestiontext
    ADD CONSTRAINT iddemographicquestion_fkey FOREIGN KEY (iddemographicquestion) REFERENCES public.demographicquestion(iddemographicquestion) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: demographicvalueset iddemographicquestiontext_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.demographicvalueset
    ADD CONSTRAINT iddemographicquestiontext_fkey FOREIGN KEY (iddemographicquestiontext) REFERENCES public.demographicquestiontext(iddemographicquestiontext) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: peoplerole idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.peoplerole
    ADD CONSTRAINT idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: peoplerole idrole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.peoplerole
    ADD CONSTRAINT idrole_fkey FOREIGN KEY (idrole) REFERENCES public.role(idrole) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: role idrole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT idrole_fkey FOREIGN KEY (idrole) REFERENCES public.role(idrole) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: assessmenttypequestion idsection_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.assessmenttypequestion
    ADD CONSTRAINT idsection_fkey FOREIGN KEY (idsection) REFERENCES public.section(idsection) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: peoplecode peoplecode_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.peoplecode
    ADD CONSTRAINT peoplecode_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople);


--
-- Name: slcqquadrant slcqquadrant_fk; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqquadrant
    ADD CONSTRAINT slcqquadrant_fk FOREIGN KEY (idslcqscaleyaxis) REFERENCES public.slcqscale(idslcqscale);


--
-- Name: slcqquadrant slcqquadrant_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqquadrant
    ADD CONSTRAINT slcqquadrant_fk_1 FOREIGN KEY (idslcqscalexaxis) REFERENCES public.slcqscale(idslcqscale);


--
-- Name: slcqquestion slcqquestion_fk; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqquestion
    ADD CONSTRAINT slcqquestion_fk FOREIGN KEY (idslcqscale) REFERENCES public.slcqscale(idslcqscale);


--
-- Name: slcqassessmentquestionresponse slcqquestionresponse_fk; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqassessmentquestionresponse
    ADD CONSTRAINT slcqquestionresponse_fk FOREIGN KEY (idassessmentresponse) REFERENCES public.assessmentresponse(idassessmentresponse);


--
-- Name: slcqassessmentquestionresponse slcqquestionresponse_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: adminstrategia
--

ALTER TABLE ONLY public.slcqassessmentquestionresponse
    ADD CONSTRAINT slcqquestionresponse_fk_1 FOREIGN KEY (idslcqquestion) REFERENCES public.slcqquestion(idslcqquestion);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: adminstrategia
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO adminstrategia;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

