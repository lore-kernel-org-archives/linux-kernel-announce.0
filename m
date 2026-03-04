Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8F537E2E3
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631021; cv=none; b=HMUsKHi37NnaeLFo+Wt1Mf8SsRMFkdgAH3b/GMGIX6CvO1U43xh3JLguY7kvyXGIck554wpX4BjbeT0zQBsjGjGV6buHvqvx1cQ7TBDDZlRHxwIB0sHgG49N6ev9yN8ZM4Wn0Zdx22gflUTSlOHgW305O256iAB4UuVYaMfZJtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631021; c=relaxed/simple;
	bh=PZiaGd56jD+NoXZCoqjdfnsVuUZA8fi0LhwPBhK/Ywc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oUtbiwdI99R4dYUVvgN1JbiobdGTV/BISZ7YTASGOAFbzr4blzf5oJNqFv4T9q0s27aoMt/jh8xf1liTC1okkSY48SbtWVAl1ZEsJzxtD0BDqjIvrcp1ZdxYfciiveI47ega0+d0vnaAzoGO36gVRv4xZ+95xmmn5OEH6VO0u1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772631021;
	bh=PZiaGd56jD+NoXZCoqjdfnsVuUZA8fi0LhwPBhK/Ywc=;
	h=Subject:From:To:Date:From;
	b=TLudqLWH2qst+sGlmfeAEpDaGvNxTz0nP1wAikjwJk+ts5SaAUA3rrJNmGr0PyWOK
	 pMA2o3T8eH54LjwcOdwV1CqSI7mjHSnkLKxnIVLTHc6siRtk9w5+AR9MgnYfwCi3W7
	 et5ffBH3g66arFGWRq6zPWLkR4dexc/YbgldTTW4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16A70C19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 02C3E3808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.128 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:30:21 +0000
Message-Id: <20260304133021.release-6.6.128@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.128
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.128.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.128.xz

Linux kernel version 6.6.128 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.128.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.128.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.128.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.128/v6.6.127

