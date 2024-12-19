Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CA41A76CB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734629730; cv=none; b=CzIkSleWfBSljKde3lpZKl1J0XrNBtZkQpVjbn3g/f8/UJGxep80eDswe/m3I8HeGvw4PJr/IVsvicS0Nq32NMsXVMueoZsBLnDPhd8e212R812/Kf/mR7a5N+XnrrNUEEe126fL4+NS0xc8Md0qisGpzD7VeFQSGFqDXhLsMWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734629730; c=relaxed/simple;
	bh=V6wdtX2ecOVMrqxyPzOnzRE7Nu7L2clroHPCTatrMgo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BV1HXgSJXKrhppdGVyBb/wiFAiUq9tc7qzF1cGZGgtj1MkSmy0cmRvnGwSytOWyAfkBi9yyKBP5WFvSrjPjDM2+3ptW+TPWriPpu+V5NDSWiXkAO0EWZUsUA7ctsIn6TPvk/Yhyqp8qH8g+omAJqOGGYDT+oN+dPNPP7MykBMLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734629730;
	bh=V6wdtX2ecOVMrqxyPzOnzRE7Nu7L2clroHPCTatrMgo=;
	h=Subject:From:To:Date:From;
	b=sp/MdAPwgjLDFJlwx15F/Ma/NKd5LnsE064RKrfGrfPue5zadiDK4rB8X1XqpdI6u
	 et4oYZBgRd+pWpxLjWNS02+oEtL/EzQprv1okYZevjQED5eXxWgOhB4YvlBXovRK1Y
	 0OoeItjniajnc/dNs/EyF04RdAfG/m0FwhG8Ppcg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBDC7C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADCF23806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.67 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:35:47 +0000
Message-Id: <20241219173547.release-6.6.67@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.67
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.67.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.67.xz

Linux kernel version 6.6.67 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.67.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.67.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.67.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.67/v6.6.66

