Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1343F14B081
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725834275; cv=none; b=IlxKROHE2m0mw0NQu/dq1kkDY6WGOdCJsomHPAsJ+kvpZh9ixKUE2Qzg7ny4dpnmxyZqVWObmy2w6T3LORwFXEa2TMgKy/m/f7v/s9CME+j+JvOEmC9hht7YCH1Xiv01MRb080Tt0TKKBFUkD9ax5c9x2rucYjkO+5WIbmQbgFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725834275; c=relaxed/simple;
	bh=ljoq5WD51So4x8cQwerxOAf1GPqRhh1wNLn9wsA9N0Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eN3zNCYFTrGNVXHQskpJyt+AeTmj3YlLM4Zx+RGFXIhraungfaH2X+U8BIiOY35NNrc0KGm6dQ3EZ7i8D43pW4tRJVGyTcp1cYzL4OjoTo0j3oqh4/8rg9lUbG6QvKwaRPXBad4HrDlphxDFvbnZt9beTdMed7T0Jkt53Fbed/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725834275;
	bh=ljoq5WD51So4x8cQwerxOAf1GPqRhh1wNLn9wsA9N0Y=;
	h=Subject:From:To:Date:From;
	b=RFpJ/ocwz9zCMdM6Ql2s9GmC0GdFUoPx0FtAEt0DnG4el9cwMBgW56su0IZeR77Oj
	 jjs6dyokRDQ+YwKycYaiJLWq/vZzOMiZDz+kAkmo+vrjw+yeKAp/cw2HEQ7QA2QY2b
	 DYxLsXwNtCplGDwymxHt1fDngZTc3tp3U4iGvg9Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C3BC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 22:24:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B39A43809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 22:24:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 08 Sep 2024 22:24:35 +0000
Message-Id: <20240908222435.release-6.11-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc7/v6.10

Linux kernel version 6.11-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc7/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc7/v6.11-rc6

