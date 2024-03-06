Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10049137914
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709737546; cv=none; b=ihIfKFrOCllStGkId/7eMcDgj1AlMRECyJMzb5N3bVQFMHcmUTxUi/n2FAz+egrZy4YABdY/37blYw2H9mV33FN/6kk0vmivF7pi1RmagI8Ab8rgDsgXXMbDO/en/UymQY/ldHsJ+5rg7MEzylIsKN87PDXYZeSNWI+qAFLIz3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709737546; c=relaxed/simple;
	bh=CL3cTA8Rcz2Q8FsRGBWJs/hoDtJAgDLqMvSrek6BdkM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gmvV7HoEK7yKSTdnu5qp0kAvAhSQQw510lYL1HdyBYI0edfisznJrxCvPFF78C/8uj+fkwdduOXlC20LdkKGDr96py59aqco7k2kUO7YVTwxzlX85qlDJ5PfoSAjBo1505ROMvcvXe3jtYDAqyUEbdemy9k/wPgEPm+JhhhQ0Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709737546;
	bh=CL3cTA8Rcz2Q8FsRGBWJs/hoDtJAgDLqMvSrek6BdkM=;
	h=Subject:From:To:Date:From;
	b=g6BFNKjizs7Od4jhLrIAb0l6S90jbuH6DS+XVuJ6zqEoFI7hBO06L3QYOrd9m4wyJ
	 EIt3KfTPzKSONT4Lix77pkg/gHI7TlFhTSsWAS4rUQw5aUo2M1IzH8XGA9TynyidVU
	 /V4uP71q5wUYERI/ij2OyyIqkOsyT685XzUMU4SE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3683C433A6
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:05:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 83B09D9A4B5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:05:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.81 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 15:05:45 +0000
Message-Id: <20240306150545.release-6.1.81@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.81
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.81.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.81.xz

Linux kernel version 6.1.81 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.81.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.81.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.81.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.81/v6.1.80

