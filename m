Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA4516C85A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712760343; cv=none; b=nlK/D70lC+oJWWLnx4XQ/Aj4VuS3Oelk/KaPtZKaB1ADoAuBGj2knjdv7J1ScqliQPZ8g1lCN689VzOwCCXv/qj8DL6pF0/0lbnY2zKHH3PFfHui2nqCpIKWX4zkUSyfHtX6h9zOd8x6r4vEyxyIWgT/1+DsiReTK/pmvsJ9Di0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712760343; c=relaxed/simple;
	bh=lnA3RoHvS1FEPONq8mErE64MZTeqr4BJ0oem1tFPj4I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LnMv/TOUq6sr4kt7mokkHCIwwvwczX2dn0u3WA386UY3yxMLtSyf8JXrVivs0ColjdgrCkMc+eKeKm3366DlMPi7oCG9dJB5J8MZbkJ7GGlpG904he0A5GG7s/4zMxcDmHv0PAu4nOXhdrQcDGQ1+DUQJraf+le3eVioMFYmNEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712760343;
	bh=lnA3RoHvS1FEPONq8mErE64MZTeqr4BJ0oem1tFPj4I=;
	h=Subject:From:To:Date:From;
	b=QYcssyTWCEK+LcgWK/gFQVFV4MVYzJzkxq9QoBZXZbe2dvA1OHHRon3+6P51W0aLb
	 kmf6/+AUcgksXQ39Y03bCsEvuYfBLXAK1VizYzXNCsktkykvx6Jnsc3jm1sQxeeAH9
	 /atG9Vcfzc/0sCYs2K6HXo2oL/pICJyruuMCgGzs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37F8EC433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:45:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 277C0D60310
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.85 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Apr 2024 14:45:43 +0000
Message-Id: <20240410144543.release-6.1.85@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.85
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.85.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.85.xz

Linux kernel version 6.1.85 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.85.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.85.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.85.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.85/v6.1.84

