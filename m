Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7842D13C3F5
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712256647; cv=none; b=ivkdIMy4afnGT8fV9QuTKPeLRI1u9QnUIHk8AgB07SbuYkbZyPOSoWuxBP+yrwhmyss2h1IYrBBsACd4uRXCtZjLet4auP70yTbOCfZbzu6vJWwrQtvArRbtwlko6gamYnlb87pueNbrVJ1KwPDSuSm3WaXlzp4ABrlgOZxYxK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712256647; c=relaxed/simple;
	bh=r/3VNnBJznSBYmdTz/tNeAZ1V4iADWcV68Dwt8TOrJQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SQA1hqXOs0H6k0UqL6x0IvhJN1bCfQbhq6xFLCddCa5WbkuyiucMwrv1newAhzEPsHKzsc0nHMOYmn8qg3v5mwb7M1mM/twZgzIZZEBQSH+XgWT5HPZTsZu0VgzNFR8UhkKk/r0X+fDemMiFeb5UmjkInAOtSHa2huZpvkEqdGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712256647;
	bh=r/3VNnBJznSBYmdTz/tNeAZ1V4iADWcV68Dwt8TOrJQ=;
	h=Subject:From:To:Date:From;
	b=nxtym03x68EuNdXQQARwBevl3jCNeG6VuJ6sWOrH52hNRHx0RhzCa+myIytJhzVOg
	 LRA9SYHI4PV3N1btxt8oEQ7/5/LIlcNPro6/b9d9Xcx9+iqyeCyKzdw7O1qz8YCs4w
	 aGP2ip1ZAQb+s+eDKceqUF06DT7w5W0U2oWbHwCk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id F101DC433F1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:50:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E80C8D9A153
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Apr 2024 18:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Apr 2024 18:50:46 +0000
Message-Id: <20240404185046.release-6.8.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.4.xz

Linux kernel version 6.8.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.4/v6.8.3

