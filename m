Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF246CDB8
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709295649; cv=none; b=tXwRHZAabIQan5cKrQEPJ3p0KY14jq6XSYKsIuksbv3dwlUcUnrcqLSgr937hpsN6VXdnAnnSeVUEKyRsQe7sm1rJavpv+XtpnMBYCfQZ76YauKGZkTErdVZT5WBkvJ2eGqPdIk0uLJ1Zz9cLZYPVy1Jz33UEoK5PRVD5Ix1l4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709295649; c=relaxed/simple;
	bh=/yT1hyq27VTupX5h4vOE9OZfJ75qAmAvyOWT+Za5hyw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=B+U9cjOp0ljDAYL6XDxqJOYYIw6lRAaM8Jlr91JfCnvvki25qbcnsG8mX2taG/LQFiJr4YSGVbRQjW7oqKOlqncStROgWbk5E3JmoRPT5dicbJI7SlIQVvq47giw/D4d9gST3TaK5O28zjJW63HIOI01z1WTgj79F8+8Y7MvxbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709295649;
	bh=/yT1hyq27VTupX5h4vOE9OZfJ75qAmAvyOWT+Za5hyw=;
	h=Subject:From:To:Date:From;
	b=dW8dc37XiBBL3mGOJG0UsCPl8f672I8ZDdNkS73Q3fP4KZbbYbAOeDKNin6bC612V
	 on9DBp3R97cWTNGivee31yeSYoWaESZFHfj2REBXNOQqQDUxWMk26BLi0bFJG1sVzm
	 KK8Z63znWEyckMaHCWS2ocymWBYOM6nX3fUOyrjo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 479BFC433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:20:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2C952C595D1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:20:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.270 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:20:49 +0000
Message-Id: <20240301122049.release-5.4.270@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.270
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.270.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.270.xz

Linux kernel version 5.4.270 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.270.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.270.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.270.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.270/v5.4.269

